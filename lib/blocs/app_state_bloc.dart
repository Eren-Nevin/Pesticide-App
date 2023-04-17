import 'package:pesticide/model/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'package:pesticide/blocs/events/app_state_events.dart';

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

    on<ReloadAppStateEvent>((event, emit) {
      AppState state = event.appState ?? AppState(everythingIsGood: true);
      emit(state);
    });
  }
}
