import 'package:flutter/cupertino.dart';
import 'package:isar/isar.dart';
part 'authentication_state.g.dart';

@collection
class AuthenticationState {
  Id id = 1;
  String token;
  String firebaseToken;
  String name;
  String email;
  String username;
  String password;
  String country;
  String occupation;
  String education;

  int loggedInUserGlobalId;
  bool loggedIn;

  AuthenticationState(
      {required this.token,
      required this.firebaseToken,
      required this.loggedInUserGlobalId,
      required this.username,
      required this.name,
      required this.email,
      required this.password,
      required this.occupation,
      required this.education,
      required this.country,
      this.loggedIn = false});

  static AuthenticationState getEmptyAuthState() {
    return AuthenticationState(
      loggedIn: false,
      country: 'en',
      loggedInUserGlobalId: 0,
      firebaseToken: '',
      token: '',
      occupation: '',
      education: '',
      name: '',
      username: '',
      email: '',
      password: '',
    );
  }

  int? getLoggedInUserGlobalId() {
    if (loggedIn) {
      return loggedInUserGlobalId;
    }
    return null;
  }

  String? getLoggedInUserToken() {
    if (loggedIn) {
      return token;
    }
    return null;
  }

  Map<String, dynamic> toJson() => {
        'uid': loggedInUserGlobalId,
        'token': token,
        'firebase_token': firebaseToken,
        'username': username,
        'name': name,
        'email': email,
        'password': password,
        'country': country,
        'occupation': occupation,
        'education': education,
      };

  @override
  String toString() => """Username: $username, 
    Locale: $Locale,
      $loggedIn: $loggedInUserGlobalId: $token\n
      Firebase Token: $firebaseToken""";
}
