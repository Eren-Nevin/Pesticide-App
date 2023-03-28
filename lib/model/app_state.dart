import 'package:isar/isar.dart';
part 'app_state.g.dart';

@collection
class AppState {
  Id id = 1;
  bool everythingIsGood;
  AppState({required this.everythingIsGood});

  @override
  bool operator ==(Object other) {
    if (other is AppState) {
      bool result =
          id == other.id && everythingIsGood == other.everythingIsGood;
      return result;
    }
    return false;
  }

  @override
  int get hashCode => Object.hash(
        id,
        everythingIsGood,
      );
}
