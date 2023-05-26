import 'package:dio/dio.dart';
import 'package:pesticide/model/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'package:pesticide/blocs/events/app_state_events.dart';
import 'package:pesticide/repository.dart';

import 'authentication_bloc.dart';
import 'package:pesticide/pages/report_page.dart';

// TODO: Maybe add previous state as part of a state, meaning by having a state,
// we would be able to retrieve its previous state.

// This refers to a task or task sheet that is committed by user.

class AppStateBloc extends Bloc<AppStateEvent, AppState> {
  AppStateBloc({required AppState initialState}) : super(initialState) {
    on<ChangeMoodEvent>((event, emit) {
      GetIt.I<Logger>().i("Change Mood Event $event");
      state.everythingIsGood = event.everythingIsGood;
      emit(state);
    });

    on<ChoseLocalEvent>((event, emit) {
      AppState newState = AppState.clone(state);
      newState.chosenLocale = event.chosenLocale;
      newState.hasChosenLocale = true;
      emit(newState);
    });

    on<UnchoseLocalEvent>((event, emit) {
      AppState newState = AppState.clone(state);
      newState.hasChosenLocale = false;
      newState.chosenLocale = 'en';
      emit(newState);
    });

    on<ReloadAppStateEvent>((event, emit) async {
      GetIt.I<Logger>().i("Reload App State Event");
      AppState newState = event.appState != null
          ? AppState.clone(event.appState!)
          : AppState(everythingIsGood: true);
      if (event.sendToServer) {
        int uid = GetIt.I<Repository>()
            .getAuthenticationBloc()
            .state
            .loggedInUserGlobalId;
        print(uid);
        print(uid);
        print(uid);
        print(uid);

        await sendStateToServer(uid, newState);

        await sendReportToServer(uid, newState);
      }
      emit(newState);
    });
    on<AppResetEvent>((event, emit) {
      AppState emptyState = AppState(everythingIsGood: true);
      emit(emptyState);
    });
  }
}

Future<void> sendStateToServer(int uid, AppState appState) async {
  Dio client = Dio();
  dynamic sentData = {
    'payload': {
      'uid': uid,
      'app_state': appState.toJson(),
    }
  };

  GetIt.I<Logger>().w("Sending state to server $sentData");
  Response response = await client.post("$serverAddress/api/save_state",
      data: sentData,
      options: Options().copyWith(responseType: ResponseType.json));

  GetIt.I<Logger>().d("Returned response from server rest api $response");

  GetIt.I<Logger>().w(response.data);
  client.close();
}

Future<void> sendReportToServer(int uid, AppState appState) async {
  Dio client = Dio();
  GetIt.I<Logger>().w("Sending report to server");
  Response reportResponse = await client.post("$serverAddress/api/save_report",
      queryParameters: {'uid': uid},
      data: generateHTMLReport(appState),
      options: Options().copyWith(
        contentType: 'text/html',
      ));

  client.close();
}
