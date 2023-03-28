import 'package:pesticide/model/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'package:pesticide/blocs/events/authentication_events.dart';
import 'package:pesticide/model/authentication_state.dart';

// TODO: Maybe add previous state as part of a state, meaning by having a state,
// we would be able to retrieve its previous state.

// This refers to a task or task sheet that is committed by user.

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({required AuthenticationState initialState})
      : super(initialState) {
    on<AttemptLoginEvent>((event, emit) {
      GetIt.I<Logger>().i("AttemptLoginEvent $event");

      AuthenticationState result =
          Authenticator().login(event.username, event.password);
      emit(result);
    });

    on<ReloadAuthEvent>((event, emit) {
      AuthenticationState state = event.authenticationState ??
          AuthenticationState(
              loggedIn: false,
              loggedInUserGlobalId: 0,
              firebaseToken: 'firebase_token',
              token: 'token',
              username: '',
              profileImageUrl: '');
      emit(state);
    });
  }
}

class Authenticator {
  AuthenticationState login(String username, String password) {
    return AuthenticationState(
        token: 'token',
        firebaseToken: 'firebase_token',
        loggedInUserGlobalId: 3001,
        username: username,
        profileImageUrl: '');
  }
}
