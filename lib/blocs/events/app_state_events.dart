import 'package:pesticide/model/app_state.dart';

abstract class AppStateEvent {}

class ChangeMoodEvent extends AppStateEvent {
  bool everythingIsGood;
  ChangeMoodEvent({required this.everythingIsGood});
}

class ChoseLocalEvent extends AppStateEvent {
  String chosenLocale;
  ChoseLocalEvent({required this.chosenLocale});
}

class UnchoseLocalEvent extends AppStateEvent {}

class ReloadAppStateEvent extends AppStateEvent {
  AppState? appState;
  bool sendToServer;
  ReloadAppStateEvent(this.appState, this.sendToServer);
}

class AppResetEvent extends AppStateEvent {}
