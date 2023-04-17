import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:localization/localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:logger/logger.dart';
import 'package:pesticide/blocs/app_state_bloc.dart';
import 'package:pesticide/blocs/events/app_state_events.dart';
import 'package:pesticide/model/app_state.dart';
import 'package:pesticide/model/models.dart';
import 'package:pesticide/repository.dart';

import 'package:pesticide/routing.dart';
import 'package:pesticide/theme.dart';

void initializeLogger() {
  final logger = Logger(
      level: Level.info,
      printer: PrettyPrinter(
        methodCount: 1,
        colors: true,
      ));
  GetIt.I.registerSingleton<Logger>(logger);
}

Future<void> initializeRepository() async {
  var repository = Repository();
  await repository.initialize();

  GetIt.I.registerSingleton<Repository>(repository);
}

Future<void> createAndAddGoRouterToGetIt() async {
  bool isLoggedIn =
      (await GetIt.I<Repository>().readAuthenticationFromDatabase()).loggedIn;

  GoRouter appRouter = createAppRouter(isLoggedIn);

  GetIt.I.registerSingleton<GoRouter>(appRouter);

  print(GetIt.I<GoRouter>());
}

void main() async {
  initializeLogger();
  GetIt.I<Logger>().i("App Start");
  await initializeRepository();
  await createAndAddGoRouterToGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  setTestData();
  runApp(MyApp());
}

CupertinoThemeData appTheme = getMainTheme();

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit(super.initialState);

  void setLocale(Locale locale) {
    emit(locale);
  }
}

void setTestData() {
  AppStateBloc appStateBloc = GetIt.I<Repository>().getAppStateBloc();
  AppState state = appStateBloc.state;
  AppState newState = AppState.clone(state);
  newState.lands = [
    Land(landId: 1, location: 'Turkey', area: 100, slope: 10),
    Land(landId: 2, location: 'Greece', area: 10, slope: 20),
  ];
  newState.crops = [
    Crop(
        name: 'Tomato',
        plantingDate:
            DateTime.now().subtract(Duration(days: 40)).millisecondsSinceEpoch,
        landId: 1),
    Crop(
        name: 'Potato',
        plantingDate:
            DateTime.now().subtract(Duration(days: 10)).millisecondsSinceEpoch,
        harvestDates: [
          DateTime.now().millisecondsSinceEpoch,
          DateTime.now().add(Duration(days: 10)).millisecondsSinceEpoch,
        ],
        landId: 1),
  ];

  newState.pesticides = [
    Pesticide(
      pesticide: 'Argon',
      cropId: 2,
      landId: 1,
      problem: 'Ants',
      dose: 3,
      applicationDate: DateTime.now().millisecondsSinceEpoch,
      harvestIntervalDays: 21,
    ),
  ];

  appStateBloc.add(
    ReloadAppStateEvent(newState),
  );
}

class MyApp extends StatelessWidget {
  MyLifecycleObserver observer = MyLifecycleObserver();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = ['lib/i18n'];
    MyLifecycleObserver observer = MyLifecycleObserver();
    observer.start();

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return CupertinoApp.router(
      supportedLocales: const [
        Locale('en'),
        Locale('de'),
        Locale('it'),
        Locale('ro'),
        Locale('hr'),
        Locale('tr'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Pesticide-App',
      theme: appTheme,
      localizationsDelegates: [
        LocalJsonLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      routerConfig: GetIt.I<GoRouter>(),
    );
  }

  @override
  void dispose() {
    observer.dispose();
  }
}

class MyLifecycleObserver with WidgetsBindingObserver {
  late AppLifecycleState _state;

  AppLifecycleState get state => _state;

  MyLifecycleObserver() {}

  void start() {
    WidgetsBinding.instance.addObserver(this);
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
  }

// TODO: What services should be shutoff when app is in background and what
// shouldn't
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    _state = state;
    switch (state) {
      case AppLifecycleState.resumed:
        GetIt.I<Logger>().i("App Resumed");
        // TODO: How to prevent repository onAppResume from sending us to the first page on every
        // relaunch of app?
        /* await GetIt.I<Repository>().onAppResume(); */
        break;
      case AppLifecycleState.paused:
        GetIt.I<Logger>().i("App Paused");
        /* if (await hasGottenContactPermission()) { */
        /*   await GetIt.I<Repository>().syncDeviceContactsWithServer( */
        /*     hasPermission: true, */
        /*   ); */
        /* } */
        break;
      case AppLifecycleState.detached:
        GetIt.I<Logger>().i("App Detached");
        // TODO: Test this
        await GetIt.I<Repository>().close();
        break;
      // Not Important since its iOS specific
      case AppLifecycleState.inactive:
        GetIt.I<Logger>().i("App Inactive");
        break;
    }
  }
}
