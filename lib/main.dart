import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:localization/localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:logger/logger.dart';
import 'package:pesticide/blocs/app_state_bloc.dart';
import 'package:pesticide/blocs/events/app_state_events.dart';
import 'package:pesticide/model/app_state.dart';
import 'package:pesticide/model/models.dart';
import 'package:pesticide/repository.dart';

import 'package:pesticide/routing.dart';
import 'package:pesticide/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void initializeLogger() {
  final logger = Logger(
      level: Level.info,
      printer: PrettyPrinter(
        methodCount: 1,
        colors: true,
      ));
  GetIt.I.registerSingleton<Logger>(logger);
}

Future<void> initializeRepository() async {
  var repository = Repository();
  await repository.initialize();

  GetIt.I.registerSingleton<Repository>(repository);
}

Future<void> createAndAddGoRouterToGetIt() async {
  bool isLoggedIn =
      (await GetIt.I<Repository>().readAuthenticationFromDatabase()).loggedIn;

  GoRouter appRouter = createAppRouter(isLoggedIn);

  GetIt.I.registerSingleton<GoRouter>(appRouter);

  print(GetIt.I<GoRouter>());
}

void main() async {
  initializeLogger();
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.I<Logger>().i("App Start");
  await initializeRepository();
  await createAndAddGoRouterToGetIt();
  /* final SharedPreferences prefs = await SharedPreferences.getInstance(); */
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    /* DeviceOrientation.landscapeLeft, */
    /* DeviceOrientation.landscapeRight */
  ]);

  /* setTestData(); */
  runApp(
      /* RestartWidget(child: MyApp(prefs)), */
      BlocProvider.value(
          value: GetIt.I<Repository>().getAppStateBloc(), child: MyApp()));
}

CupertinoThemeData appTheme = getMainTheme();

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit(super.initialState);

  void setLocale(Locale locale) {
    emit(locale);
  }
}

void setTestData() {
  AppStateBloc appStateBloc = GetIt.I<Repository>().getAppStateBloc();
  AppState state = appStateBloc.state;
  AppState newState = AppState.clone(state);
  newState.lands = [
    Land(
        landId: 1,
        name: 'West Field',
        location: 'Turkey',
        area: 100,
        slope: 10),
    Land(landId: 2, name: 'Bigly', location: 'Greece', area: 10, slope: 20),
  ];
  newState.crops = [
    Crop(
      cropId: 1,
      name: 'Tomato',
      plantingDate:
          DateTime.now().subtract(Duration(days: 40)).millisecondsSinceEpoch,
      landId: 1,
      harvestDates: [
        DateTime.now().add(Duration(days: 20)).millisecondsSinceEpoch,
        DateTime.now().add(Duration(days: 30)).millisecondsSinceEpoch,
      ],
    ),
    Crop(
        cropId: 2,
        name: 'Potato',
        plantingDate:
            DateTime.now().subtract(Duration(days: 10)).millisecondsSinceEpoch,
        harvestDates: [
          /* DateTime.now().millisecondsSinceEpoch, */
          DateTime.now().add(Duration(days: 10)).millisecondsSinceEpoch,
        ],
        landId: 2),
  ];

  newState.pesticides = [
    PesticideApplication(
      pesticide: 'Argon',
      cropId: 1,
      landId: 1,
      problem: 'Ants',
      dose: 3,
      applicationDate: DateTime.now().millisecondsSinceEpoch,
      harvestIntervalDays: 21,
    ),
    PesticideApplication(
      pesticide: 'Mayonaise',
      cropId: 1,
      landId: 1,
      problem: 'Ants',
      dose: 22,
      applicationDate: DateTime.now().millisecondsSinceEpoch,
      harvestIntervalDays: 11,
    ),
    PesticideApplication(
      pesticide: 'Depismin',
      cropId: 2,
      landId: 2,
      problem: 'Dogs',
      dose: 16,
      applicationDate: DateTime.now().millisecondsSinceEpoch,
      harvestIntervalDays: 14,
    ),
  ];

  appStateBloc.add(
    ReloadAppStateEvent(newState),
  );
}

class MyApp extends StatelessWidget {
  MyLifecycleObserver observer = MyLifecycleObserver();

  Locale _locale = const Locale.fromSubtags(languageCode: 'en_US');

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = ['lib/i18n'];

    final String localeString = context
        .select<AppStateBloc, String>((value) => value.state.chosenLocale);

    GetIt.I<Repository>().getAuthenticationBloc().stream.listen((event) {
      if (event.loggedIn) {
        GetIt.I<GoRouter>().go('/dashboard');
      }
    });

    _locale = Locale.fromSubtags(languageCode: localeString);
    GetIt.I<Logger>().w(_locale);
    MyLifecycleObserver observer = MyLifecycleObserver();
    observer.start();

    return CupertinoApp.router(
      key: UniqueKey(),
      supportedLocales: const [
        Locale('en'),
        Locale('de'),
        Locale('it'),
        Locale('ro'),
        Locale('hr'),
        Locale('tr'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Pesticide'.i18n(),
      theme: appTheme,
      locale: _locale,
      localizationsDelegates: [
        LocalJsonLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      routerConfig: GetIt.I<GoRouter>(),
    );
  }

  @override
  void dispose() {
    observer.dispose();
  }
}

class MyLifecycleObserver with WidgetsBindingObserver {
  late AppLifecycleState _state;

  AppLifecycleState get state => _state;

  MyLifecycleObserver() {}

  void start() {
    WidgetsBinding.instance.addObserver(this);
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
  }

// TODO: What services should be shutoff when app is in background and what
// shouldn't
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    _state = state;
    switch (state) {
      case AppLifecycleState.resumed:
        GetIt.I<Logger>().i("App Resumed");
        // TODO: How to prevent repository onAppResume from sending us to the first page on every
        // relaunch of app?
        /* await GetIt.I<Repository>().onAppResume(); */
        break;
      case AppLifecycleState.paused:
        GetIt.I<Logger>().i("App Paused");
        /* if (await hasGottenContactPermission()) { */
        /*   await GetIt.I<Repository>().syncDeviceContactsWithServer( */
        /*     hasPermission: true, */
        /*   ); */
        /* } */
        break;
      case AppLifecycleState.detached:
        GetIt.I<Logger>().i("App Detached");
        // TODO: Test this
        await GetIt.I<Repository>().close();
        break;
      // Not Important since its iOS specific
      case AppLifecycleState.inactive:
        GetIt.I<Logger>().i("App Inactive");
        break;
    }
  }
}
