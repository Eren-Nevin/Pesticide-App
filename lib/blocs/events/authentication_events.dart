import 'package:pesticide/model/authentication_state.dart';

abstract class AuthenticationEvent {}

class AttemptLoginEvent extends AuthenticationEvent {
  String username;
  String password;
  AttemptLoginEvent({required this.username, required this.password});
}

class ReloadAuthEvent extends AuthenticationEvent {
  AuthenticationState? authenticationState;
  ReloadAuthEvent(this.authenticationState);
}
