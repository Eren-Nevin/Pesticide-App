import 'package:pesticide/pages/dashboard_page.dart';
import 'package:pesticide/pages/land_page.dart';
import 'package:pesticide/pages/login.dart';
import 'package:pesticide/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:pesticide/pages/segment_page.dart';
import 'package:pesticide/repository.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

GoRouter createAppRouter(bool isLoggedIn) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: isLoggedIn ? '/dashboard' : '/login',
    /* observers: [fabObserver], */
    routes: <RouteBase>[
      GoRoute(
          path: '/login',
          pageBuilder: (context, state) {
            return NoTransitionPage(
                /*   child: LoginPage(), */
                child: MultiBlocProvider(
                    providers: GetIt.I<Repository>().getBlocProviders(),
                    child: LoginPage()));
          }),
      ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            return MainPage(child: child);
          },
          routes: [
            GoRoute(
                path: '/dashboard',
                pageBuilder: (context, state) {
                  return NoTransitionPage(child: DashboardPage());
                },
                routes: [
                  GoRoute(
                      path: 'crops',
                      builder: (context, state) {
                        return MultiBlocProvider(
                            providers: GetIt.I<Repository>().getBlocProviders(),
                            child: const SegmentDetailPage(page: 'crops'));
                      }),
                  GoRoute(
                      path: 'lands',
                      builder: (context, state) {
                        return MultiBlocProvider(
                            providers: GetIt.I<Repository>().getBlocProviders(),
                            child: const SegmentDetailPage(page: 'lands'));
                      }),
                  GoRoute(
                      path: 'pesticides',
                      builder: (context, state) {
                        return MultiBlocProvider(
                            providers: GetIt.I<Repository>().getBlocProviders(),
                            child: const SegmentDetailPage(page: 'pesticides'));
                      }),
                  GoRoute(
                      path: 'unit_conversion',
                      builder: (context, state) {
                        return MultiBlocProvider(
                            providers: GetIt.I<Repository>().getBlocProviders(),
                            child: const SegmentDetailPage(
                                page: 'unit_conversion'));
                      }),
                ]),
            GoRoute(
                path: '/report',
                builder: (context, state) {
                  return MultiBlocProvider(
                      providers: GetIt.I<Repository>().getBlocProviders(),
                      child: const SegmentDetailPage(page: 'report'));
                }),
          ]),
    ],
  );
}
