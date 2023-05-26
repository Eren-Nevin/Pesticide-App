import 'dart:async';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:pesticide/blocs/events/app_state_events.dart';
import 'package:pesticide/blocs/events/authentication_events.dart';

import 'package:pesticide/model/authentication_state.dart';
import 'package:pesticide/model/app_state.dart';
import 'package:pesticide/blocs/app_state_bloc.dart';
import 'package:pesticide/blocs/authentication_bloc.dart';

import 'model/models.dart';

class SigningUpSelectLanguageCubit extends Cubit<bool> {
  SigningUpSelectLanguageCubit() : super(true);

  void languageSelected() => emit(false);
  void goBackToLanguageSelection() => emit(true);
}

// REQUIRES LOGGER
class Repository {
  final emptyAppState = AppState(everythingIsGood: true);

  late final Isar localDatabase;

  late final AppStateBloc _appStateBloc;
  late final AuthenticationBloc _authenticationBloc;

  StreamSubscription<AuthenticationState>? _authenticationBlocSubscription;
  StreamSubscription<AppState>? _appStateBlocSubscription;

  late final BlocProvider<AuthenticationBloc> _authenticationBlocProvider;
  late final BlocProvider<AppStateBloc> _appStateBlocProvider;

  Future<void> _initialize() async {
    await _openDatabase();
    // Here blocs are created from database. Note that after creation, it is
    // database that is listening on the bloc, not the other way around.
    _createBlocs(
      authenticationState: await readAuthenticationFromDatabase(),
      appState: await readAppStateFromDatabase(),
    );
  }

  Future<void> initialize() async {
    GetIt.I<Logger>().i("Initializing repository from foreground app start");
    await _initialize();
    _startListeningOnBlocs();
    _createBlocProviders();
  }

  /* Future<void> initializeForBackground() async { */
  /*   GetIt.I<Logger>().i("Initializing repository from background" */
  /*       " handler"); */
  /*   /1* GetIt.I<Logger>().e(Isar.instanceNames); *1/ */
  /*   await _openDatabase(); */
  /*   /1* await _initialize(); *1/ */
  /*   /1* _startListeningOnBlocs(); *1/ */
  /* } */

  // This resets all states to empty except the auth state.
  // TODO: We need to have a clean state that we revert to here
  Future<void> resetAppState() async {
    _appStateBloc.add(ReloadAppStateEvent(null, false));
  }

  // This is called when app is reloaded (not relaunched). We reload the
  // task and task sheets and users (since they can be altered in background by
  // firebase messages).
  // We also reload auth state for two reasons, one to resume websocket if
  // we're still logged in and two because auth can also be altered in
  // background by firebase when clients token is expired and server informs
  // client about it
  Future<void> onAppResume() async {
    /* await _reloadTaskAndSheetsBlocsFromDatabase(); */
    await reloadAppStateFromDatabase();
    await reloadAuthFromDatabase();
  }

  Future<void> close() async {
    /* await stopSubscriptions(); */
    await stopBlocs();
    await localDatabase.close();
    GetIt.I<Logger>().i("Closed database");
  }

  /* Future<void> closeFromBackground() async { */
  /*   await localDatabase.close(); */
  /*   GetIt.I<Logger>().i("Closed database from background"); */
  /* } */

  Future<void> stopSubscriptions() async {
    await _authenticationBlocSubscription?.cancel();
    await _appStateBlocSubscription?.cancel();
    GetIt.I<Logger>().i("Stopped bloc stream subscriptions");
  }

  Future<void> stopBlocs() async {
    await _appStateBloc.close();
    await _authenticationBloc.close();
    GetIt.I<Logger>().i("Stopped blocs");
  }

  /* Future<Task?> getTaskById(int id) async { */
  /*   return localDatabase.tasks.filter().idEqualTo(id).findFirstSync(); */
  /* } */

  Future<void> reloadAuthFromDatabase() async {
    AuthenticationState authState = await readAuthenticationFromDatabase();
    _authenticationBloc.add(ReloadAuthEvent(authState));
  }

  Future<void> reloadAppStateFromDatabase() async {
    AppState? appState = await readAppStateFromDatabase();
    _appStateBloc.add(ReloadAppStateEvent(appState, true));
  }

  // Make same for user models as well
  /* Future<void> _reloadTaskAndSheetsBlocsFromDatabase() async { */
  /*   List<TaskSheet> taskSheets = await readTaskSheetsFromDatabase(); */
  /*   List<Task> tasks = await readTasksFromDatabase(); */

  /*   _tasksBloc.add( */
  /*       ReloadAllTasksEvent(tasksModel: ModelsState<Task>.fromList(tasks))); */
  /*   _taskSheetsBloc.add(ReloadAllTaskSheetsEvent( */
  /*       taskSheetsModel: ModelsState<TaskSheet>.fromList(taskSheets))); */

  /*   GetIt.I<Logger>().i("Reloaded tasks and taskSheets from database:\n" */
  /*       "Tasks: $tasks\n" */
  /*       "TaskSheets: $taskSheets"); */
  /* } */

  /* Future<void> applyReceivedStateToDatabase(ReceivedState state) async { */
  /*   await _saveTasksToDatabase(state.tasks); */
  /* } */

  /* Future<void> applyReceivedStateToBlocs(ReceivedState receivedState) async { */
  /*   _appStateBloc.add(ReloadAllTasksEvent( */
  /*       tasksModel: ModelsState.fromList(receivedState.tasks))); */
  /* } */

  // Start listening on blocs. This reflect any changes in the blocs to
  // database.
  Future<void> _startListeningOnBlocs() async {
    _authenticationBlocSubscription =
        _authenticationBloc.stream.listen((auth) async {
      await _saveAuthStateToDatabase(auth);
      /* int uid = auth.loggedInUserGlobalId; */
      /* if (auth.loggedIn) { */
      /*   AppState appState = _appStateBloc.state; */
      /*   await sendStateToServer(uid, appState); */
      /*   await sendReportToServer(uid, appState); */
      /* } */
    });

    _appStateBlocSubscription = _appStateBloc.stream.listen((appState) async {
      await _saveAppStateToDatabase(appState);

      /* // TODO: Make  proper  success and error handling */
    });
  }

  Future<void> getStateFromServer(int uid) async {
    GetIt.I<Logger>().w("Getting State from Server");
    Dio client = Dio();
    dynamic sentData = {
      'payload': {
        'uid': uid,
      }
    };
    Response reportResponse = await client.post("$serverAddress/api/load_state",
        data: sentData,
        options: Options().copyWith(responseType: ResponseType.json));

    Map<String, dynamic> appStateJson = reportResponse.data['app_state'];

    List<Land> lands = [];
    List<Crop> crops = [];
    List<PesticideApplication> pesticides = [];

    for (dynamic landRaw in appStateJson['lands']) {
      String soilStructure = "${landRaw['soilStructure']}".split('.')[1];
      String soilTexture = "${landRaw['soilTexture']}".split('.')[1];
      print(soilStructure);
      print(soilTexture);
      Land land = Land(
        name: landRaw['name'],
        landId: landRaw['landId'],
        lattitude: landRaw['lattitude'],
        longitude: landRaw['longitude'],
        area: landRaw['area'],
        slope: landRaw['slope'],
        location: landRaw['location'],
        structure: SoilStructure.values.byName(soilStructure),
        texture: SoilTexture.values.byName(soilTexture),
      );
      lands.add(land);
    }

    for (dynamic cropRaw in appStateJson['crops']) {
      Crop crop = Crop(
        name: cropRaw['name'],
        landId: cropRaw['landId'],
        cropId: cropRaw['cropId'],
        plantingDate: cropRaw['planting_date'],
        harvestDates: List<int>.from(cropRaw['harvest_dates']),
      );
      crops.add(crop);
    }

    for (dynamic pesticideRaw in appStateJson['pesticides']) {
      PesticideApplication pesticide = PesticideApplication(
        pesticide: pesticideRaw['pesticide'],
        pesticideId: pesticideRaw['pesticide_id'],
        landId: pesticideRaw['land_id'],
        cropId: pesticideRaw['crop_id'],
        dose: '${pesticideRaw['dose']}',
        problem: pesticideRaw['problem'],
        applicationDate: pesticideRaw['application_date'],
        harvestIntervalDays: pesticideRaw['harvest_interval_days'],
      );
      pesticides.add(pesticide);
    }

    AppState newState = AppState.clone(_appStateBloc.state);
    newState.hasChosenLocale = appStateJson['has_chosen_locale'];
    newState.chosenLocale = appStateJson['chosen_locale'];
    newState.lands = [...lands];
    newState.crops = [...crops];
    newState.pesticides = [...pesticides];

    _appStateBloc.add(ReloadAppStateEvent(newState, true));
    client.close();
  }

  Future<void> _saveAuthStateToDatabase(AuthenticationState auth) async {
    await localDatabase.writeTxn(() async {
      GetIt.I<Logger>().i("Saving AuthenticationState To Database: $auth");
      await localDatabase.authenticationStates.clear();
      await localDatabase.authenticationStates.put(auth);
    });
  }

  Future<void> _saveAppStateToDatabase(AppState appState) async {
    await localDatabase.writeTxn(() async {
      GetIt.I<Logger>().i("Saving App State To Database: $appState");
      await localDatabase.appStates.clear();
      await localDatabase.appStates.put(appState);
    });
  }

  // Very Important Note: When BlocProvider(create: ...) is used, the bloc is
  // automatically closed when the widget tree using it is disposed. To make
  // sure a bloc is not affected but its listeners, we have to create the bloc
  // sperately and use BlocProvider.value as we're using here. This small bug
  // costs me a whole day.
  void _createBlocProviders() {
    GetIt.I<Logger>().i("Creating bloc providers");

    _authenticationBlocProvider =
        BlocProvider<AuthenticationBloc>.value(value: _authenticationBloc);

    _appStateBlocProvider =
        BlocProvider<AppStateBloc>.value(value: _appStateBloc);
  }

  // Note that userEventsBloc is not saved to database
  void _createBlocs({
    required AuthenticationState authenticationState,
    required AppState appState,
  }) {
    GetIt.I<Logger>().i("Creating blocs");
    _authenticationBloc = AuthenticationBloc(initialState: authenticationState);
    _appStateBloc = AppStateBloc(initialState: appState);
  }

  Future<void> _openDatabase() async {
    final dir = await getApplicationDocumentsDirectory();
    GetIt.I<Logger>().i("Openning database");
    localDatabase = await Isar.open([AuthenticationStateSchema, AppStateSchema],
        directory: dir.path, inspector: false);
  }

  Future<AuthenticationState> readAuthenticationFromDatabase() async {
    final List<AuthenticationState> authStates =
        await localDatabase.authenticationStates.where().findAll();

    if (authStates.isEmpty) {
      GetIt.I<Logger>().w("Couldn't find auth state");
      return AuthenticationState.getEmptyAuthState();
    } else if (authStates.length > 1) {
      GetIt.I<Logger>().e("Multiple Auth States");
      return authStates.first;
    }
    GetIt.I<Logger>().i("Read the single auth state from database:"
        "${authStates.first}");
    return authStates.first;
  }

  // Previous Bug: All list of ints are returned as Int64List from database which is
  // not growable. When creating task and tasksheets from database, we have to
  // clone them, this enables us to use the normal growable list instead of
  // fixed length one that is returned from database
  Future<AppState> readAppStateFromDatabase() async {
    AppState? returnedAppState =
        await localDatabase.appStates.where().findFirst();
    GetIt.I<Logger>().w("Read app state from database: $returnedAppState");
    return returnedAppState ?? emptyAppState;
  }

  AuthenticationBloc getAuthenticationBloc() => _authenticationBloc;
  AppStateBloc getAppStateBloc() => _appStateBloc;

  BlocProvider<AuthenticationBloc> getAuthenticationBlocProvider() =>
      _authenticationBlocProvider;
  BlocProvider<AppStateBloc> getAppStateBlocProvider() => _appStateBlocProvider;

  List<BlocProvider> getBlocProviders() => [
        _authenticationBlocProvider,
        _appStateBlocProvider,
      ];
}
