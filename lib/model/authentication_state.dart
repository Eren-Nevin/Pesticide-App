import 'package:isar/isar.dart';
part 'authentication_state.g.dart';

@collection
class AuthenticationState {
  Id id = 1;
  String token;
  String firebaseToken;
  String username;
  String profileImageUrl;

  int loggedInUserGlobalId;
  bool loggedIn;

  AuthenticationState(
      {required this.token,
      required this.firebaseToken,
      required this.loggedInUserGlobalId,
      required this.username,
      required this.profileImageUrl,
      this.loggedIn = false});

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
        'profileImageUrl': profileImageUrl,
      };

  @override
  String toString() =>
      "Username: $username, $loggedIn: $loggedInUserGlobalId: $token\n"
      "Firebase Token: $firebaseToken";
}
