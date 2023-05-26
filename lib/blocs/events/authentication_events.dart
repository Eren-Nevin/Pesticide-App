import 'package:pesticide/model/authentication_state.dart';

abstract class AuthenticationEvent {}

class AttemptLoginEvent extends AuthenticationEvent {
  String username;
  String password;
  AttemptLoginEvent({required this.username, required this.password});
  Map<String, dynamic> toJson() => {
        'username': username,
        'password': password,
      };
}

class AttempSignupEvent extends AuthenticationEvent {
  String name;
  String email;
  String username;
  String password;
  String country;
  String occupation;
  String education;

  AttempSignupEvent({
    required this.name,
    required this.email,
    required this.username,
    required this.password,
    required this.country,
    required this.occupation,
    required this.education,
  });

  Map<String, dynamic> toJson() => {
        'username': username,
        'name': name,
        'email': email,
        'password': password,
        'country': country,
        'occupation': occupation,
        'education': education,
      };
}

class AuthLogoutEvent extends AuthenticationEvent {}

class ReloadAuthEvent extends AuthenticationEvent {
  AuthenticationState? authenticationState;
  ReloadAuthEvent(this.authenticationState);
}
