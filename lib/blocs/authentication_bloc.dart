import 'package:pesticide/model/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'package:pesticide/blocs/events/authentication_events.dart';
import 'package:pesticide/model/authentication_state.dart';

// TODO: Maybe add previous state as part of a state, meaning by having a state,
// we would be able to retrieve its previous state.

// This refers to a task or task sheet that is committed by user.

import 'package:dio/dio.dart';
import 'package:pesticide/repository.dart';

// TODO: Add error handling

String serverAddress = 'https://adinal.co:3004';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({required AuthenticationState initialState})
      : super(initialState) {
    on<AttemptLoginEvent>((event, emit) async {
      GetIt.I<Logger>().i("AttemptLoginEvent $event");
      /* GetIt.I<Logger>().i("AttempSignupEvent $event"); */

      Dio client = Dio();

      GetIt.I<Logger>().w(event);
      Response response = await client.post("$serverAddress/api/login",
          data: {
            'payload': {'login_info': event.toJson()}
          },
          options: Options().copyWith(responseType: ResponseType.json));

      GetIt.I<Logger>().d("Returned response from server rest api $response");

      GetIt.I<Logger>().w(response.data);

      /* // TODO: Make  proper  success and error handling */
      if (response.data['uid'] != 0) {
        AuthenticationState newState = AuthenticationState.getEmptyAuthState();
        newState.loggedInUserGlobalId = response.data['uid'];
        newState.name = response.data['name'];
        newState.email = response.data['email'];
        newState.username = response.data['username'];
        newState.password = response.data['password'];
        newState.occupation = response.data['occupation'];
        newState.education = response.data['education'];
        newState.country = response.data['country'];
        newState.loggedIn = true;

        if (newState.loggedIn) {
          await GetIt.I<Repository>()
              .getStateFromServer(newState.loggedInUserGlobalId);
        }

        emit(newState);
      }
    });

    on<AttempSignupEvent>((event, emit) async {
      GetIt.I<Logger>().i("AttempSignupEvent $event");

      Dio client = Dio();

      GetIt.I<Logger>().w(event);
      Response response = await client.post("$serverAddress/api/signup",
          data: {
            'payload': {'signup_info': event.toJson()}
          },
          options: Options().copyWith(responseType: ResponseType.json));

      GetIt.I<Logger>().d("Returned response from server rest api $response");

      GetIt.I<Logger>().w(response.data);

      /* // TODO: Make  proper  success and error handling */
      if (response.data['uid'] != 0) {
        AuthenticationState newState = AuthenticationState.getEmptyAuthState();
        newState.loggedInUserGlobalId = response.data['uid'];
        newState.name = response.data['name'];
        newState.email = response.data['email'];
        newState.username = response.data['username'];
        newState.password = response.data['password'];
        newState.occupation = response.data['occupation'];
        newState.education = response.data['education'];
        newState.country = response.data['country'];
        newState.loggedIn = true;

        emit(newState);
      }
    });

    on<AuthLogoutEvent>(
      (event, emit) {
        AuthenticationState state = AuthenticationState.getEmptyAuthState();
        emit(state);
      },
    );

    on<ReloadAuthEvent>((event, emit) {
      AuthenticationState state =
          event.authenticationState ?? AuthenticationState.getEmptyAuthState();
      emit(state);
    });
  }
}

/* class Authenticator { */
/*   AuthenticationState login(String username, String password) { */
/*     return AuthenticationState( */
/*         loggedIn: false, */
/*         country: 'en', */
/*         loggedInUserGlobalId: 0, */
/*         firebaseToken: '', */
/*         token: '', */
/*         occupation: '', */
/*         education: '', */
/*         name: '', */
/*         username: '', */
/*         email: '', */
/*         password: '', */
/*         profileImageUrl: ''); */
/*   } */
/* } */
