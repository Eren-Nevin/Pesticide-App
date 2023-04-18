import 'package:isar/isar.dart';
import 'package:pesticide/model/models.dart';
part 'app_state.g.dart';

@collection
class AppState {
  Id id = 1;
  bool everythingIsGood = false;

  bool hasChosenLocale = false;
  String chosenLocale = '';

  List<Land> lands = [];
  List<Crop> crops = [];
  List<Pesticide> pesticides = [];

  AppState(
      {required this.everythingIsGood,
      this.hasChosenLocale = false,
      this.chosenLocale = 'en'});

  AppState.clone(
    AppState appState,
  ) : super() {
    everythingIsGood = appState.everythingIsGood;
    hasChosenLocale = appState.hasChosenLocale;
    chosenLocale = appState.chosenLocale;
  }

  @override
  String toString() => """hasChosenLocale: $hasChosenLocale, 
      chosenLocale: $chosenLocale""";

  @override
  bool operator ==(Object other) {
    if (other is AppState) {
      bool result = id == other.id &&
          everythingIsGood == other.everythingIsGood &&
          hasChosenLocale == other.hasChosenLocale &&
          chosenLocale == other.chosenLocale;
      return result;
    }
    return false;
  }

  @override
  int get hashCode => Object.hash(
        id,
        everythingIsGood,
        hasChosenLocale,
        chosenLocale,
      );
}