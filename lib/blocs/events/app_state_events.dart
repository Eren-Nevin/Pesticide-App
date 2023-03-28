import 'package:pesticide/model/app_state.dart';

abstract class AppStateEvent {}

class ChangeMoodEvent extends AppStateEvent {
  bool everythingIsGood;
  ChangeMoodEvent({required this.everythingIsGood});
}

class ReloadAppStateEvent extends AppStateEvent {
  AppState? appState;
  ReloadAppStateEvent(this.appState);
}
