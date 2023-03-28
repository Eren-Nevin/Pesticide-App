import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:pesticide/repository.dart';

import 'package:pesticide/routing.dart';
import 'package:pesticide/theme.dart';

// TODO: Replace gesture detectors with proper click handling

// TODO: Make more recently used tasksheets and users to be more acceissible in
// add task and add tasksheet dialogs

// TODO: Fix tasksheet notes

// TODO: Make server send state in separate parts, one for tasks, one for
// tasksheets and so on. This lets you to only update that model in the database
// and bloc causing fewer updates in UI. In an ideal world, the granuality of
// updates should be minimal, down to a signle task or tasksheet.

// TODO: Change deleting task when shared, instead unsubscribe from it (like
// tasksheet)
// TODO: Create undo for deleting tasks using snackbar
// TODO: Validate every user input including on signup, task titles, ...
// TODO: Add snackbar on delete using a new event (userIntentsOnDeleting
// Task/TaskSheet) which is not reported to server but instead is observed by
// repository and only when user has not clicked 'undo' in the snackbar, the
// real UserDeletesTaskEvent is fired. Note that we can create a new class of
// UserEvent called UserLocalEvent that are not sent to server and these new
// events can be its children.

// Initializers
// TODO: Why not close repository and services on app stop and re initialize
// them on app reload?

// TODO: should we deinitialize firebase like notification services on stop and
// reinitialize in on resume?
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

/* Future<void> initializeFirebase() async { */
/*   FirebaseService firebaseService = FirebaseService(); */
/*   await firebaseService.initialize(); */
/*   GetIt.I.registerSingleton<FirebaseService>(firebaseService); */
/* } */

void addGoRouterToGetIt() {
  GetIt.I.registerSingleton<GoRouter>(appRouter);
}

void main() async {
  initializeLogger();
  GetIt.I<Logger>().i("App Start");
  addGoRouterToGetIt();
  WidgetsFlutterBinding.ensureInitialized();
  await initializeRepository();
  /* await initializeFirebase(); */

  runApp(MyApp());
}

CupertinoThemeData appTheme = getMainTheme();

class MyApp extends StatelessWidget {
  MyLifecycleObserver observer = MyLifecycleObserver();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MyLifecycleObserver observer = MyLifecycleObserver();
    observer.start();

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return CupertinoApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Pesticide-App',
      theme: appTheme,
      localizationsDelegates: const [
        DefaultCupertinoLocalizations.delegate,
        DefaultMaterialLocalizations.delegate,
      ],
      routerConfig: appRouter,
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
        await GetIt.I<Repository>().onAppResume();
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
