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
  String language;
  String education;
  String occupation;
  String profileImageUrl;

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
      required this.education,
      required this.occupation,
      required this.language,
      required this.profileImageUrl,
      this.loggedIn = false});

  static AuthenticationState getEmptyAuthState() {
    return AuthenticationState(
        loggedIn: false,
        language: 'en',
        loggedInUserGlobalId: 0,
        firebaseToken: '',
        token: '',
        occupation: '',
        education: '',
        name: '',
        username: '',
        email: '',
        password: '',
        profileImageUrl: '');
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
        'user_id': loggedInUserGlobalId,
        'token': token,
        'firebase_token': firebaseToken,
        'username': username,
        'name': name,
        'email': email,
        'password': password,
        'language': language,
        'occupation': occupation,
        'education': education,
        'profileImageUrl': profileImageUrl,
      };

  @override
  String toString() => """Username: $username, 
    Locale: $Locale,
      $loggedIn: $loggedInUserGlobalId: $token\n
      Firebase Token: $firebaseToken""";
}
