import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:pesticide/model/app_state.dart';

const List<String> languages = [
  'English',
  'German',
  'Italian',
  'Romainian',
  'Crotian',
  'Turkish'
];

const Map<String, String> languageToLocaleCodes = {
  'English': 'en',
  'German': 'de',
  'Italian': 'it',
  'Romainian': 'ro',
  'Crotian': 'hr',
  'Turkish': 'tr',
};

const Map<String, String> localeCodesToCountry = {
  'en': 'England',
  'de': 'Germany',
  'it': 'Italy',
  'ro': 'Romania',
  'hr': 'Croatia',
  'tr': 'Turkey',
};

String getCountryByAppState(AppState appState) {
  if (localeCodesToCountry.containsKey(appState.chosenLocale)) {
    String res = localeCodesToCountry[appState.chosenLocale]!;
    return res;
  }
  return 'England';
}

class Translator {
  String translate(String normal, String? locale) {
    return normal;
  }
}
