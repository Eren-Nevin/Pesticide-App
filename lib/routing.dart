import 'package:pesticide/pages/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:pesticide/repository.dart';

/* import 'package:couple/view/home.dart'; */
/* import 'package:couple/view/tabs/plan_tab/plan_page.dart'; */
/* import 'package:couple/view/tabs/profile/profile_page.dart'; */
/* import 'package:couple/view/tabs/task_tab/tasks_page.dart'; */
/* import 'package:logger/logger.dart'; */

/* import '../tabs/task_tab/task_detail_page/tasksheet_detail_page.dart'; */

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

/* class FabObserver extends NavigatorObserver { */
/*   @override */
/*   void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) { */
/*     GetIt.I<Logger>().w("didRemove"); */
/*   } */

/*   /// The [Navigator] replaced `oldRoute` with `newRoute`. */
/*   @override */
/*   void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) { */
/*     GetIt.I<Logger>().w("didReplace"); */
/*   } */

/*   /// The [Navigator]'s routes are being moved by a user gesture. */
/*   /// */
/*   /// For example, this is called when an iOS back gesture starts, and is used */
/*   /// to disabled hero animations during such interactions. */
/*   @override */
/*   void didStartUserGesture( */
/*       Route<dynamic> route, Route<dynamic>? previousRoute) { */
/*     GetIt.I<Logger>().w("didStartUserGesture"); */
/*   } */

/*   /// User gesture is no longer controlling the [Navigator]. */
/*   /// */
/*   /// Paired with an earlier call to [didStartUserGesture]. */
/*   @override */
/*   void didStopUserGesture() { */
/*     GetIt.I<Logger>().w("didStopUserGesture"); */
/*   } */

/*   @override */
/*   didPop(Route route, Route? previousRoute) { */
/*     GetIt.I<Logger>().w("POP"); */
/*     GetIt.I<Logger>().w(route); */
/*   } */

/*   @override */
/*   didPush(Route route, Route? previousRoute) { */
/*     GetIt.I<Logger>().w("PUSH"); */
/*     GetIt.I<Logger>().w(route.navigator); */
/*     /1* final String location = GoRouterState.of(context).location; *1/ */
/*     /1* GetIt.I<Logger>().i("Here: $location"); *1/ */
/*   } */
/* } */

/* final Repository repository = GetIt.I<Repository>(); */

/* final FabObserver fabObserver = FabObserver(); */

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/login',
  /* observers: [fabObserver], */
  routes: <RouteBase>[
    GoRoute(
        path: '/login',
        pageBuilder: (context, state) {
          return NoTransitionPage(
              child: MultiBlocProvider(
                  providers: GetIt.I<Repository>().getBlocProviders(),
                  child: LoginPage()));
        }),
    /* ShellRoute( */
    /*     navigatorKey: _shellNavigatorKey, */
    /*     builder: (context, state, child) { */
    /*       return MainPage(child: child); */
    /*     }, */
    /*     routes: [ */
    /*       GoRoute( */
    /*           path: '/task_sheets', */
    /*           pageBuilder: (context, state) { */
    /*             /1* builder: (context, state) { *1/ */
    /*             /1* return TaskSheetTab(); *1/ */
    /*             /1* bui *1/ */
    /*             /1* detectSwipeBackFromTaskSheetDetailHack = true; *1/ */
    /*             /1* return CupertinoPage( *1/ */
    /*             return NoTransitionPage( */
    /*               child: TaskSheetsPage(), */
    /*             ); */
    /*           }, */
    /*           routes: [ */
    /*             GoRoute( */
    /*                 path: ':taskSheetId', */
    /*                 builder: (context, state) { */
    /*                   int tasksheet_id = */
    /*                       int.parse(state.params['taskSheetId']!); */
    /*                   if (tasksheet_id == -1) { */
    /*                     return UnlistedTaskSheetDetailPage(); */
    /*                   } else { */
    /*                     return TaskSheetDetailPage( */
    /*                         taskSheetId: */
    /*                             int.parse(state.params['taskSheetId']!)); */
    /*                   } */
    /*                 }) */
    /*           ]), */
    /*       GoRoute( */
    /*         path: '/plans', */
    /*         pageBuilder: (context, state) { */
    /*           return const NoTransitionPage(child: PlanTab()); */
    /*         }, */
    /*       ), */
    /*       GoRoute( */
    /*         path: '/settings', */
    /*         pageBuilder: (context, state) { */
    /*           return const NoTransitionPage(child: ProfileTab()); */
    /*         }, */
    /*       ), */
    /*     ]), */
  ],
);
