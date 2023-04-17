import 'dart:core';
import 'package:pesticide/theme.dart';
import 'package:pesticide/view/add_fab.dart';
import 'package:pesticide/routing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'package:pesticide/repository.dart';

enum AppPages {
  Dashboard,
  Crop,
  Land,
  Pesticide,
  Report,
  UnitConversion,
  Other
}

AppPages getCurrentPage(BuildContext context) {
  AppPages result = AppPages.Other;
  final String location = GoRouterState.of(context).location;

  RegExp dashboardPageRegex = RegExp(r"/dashboard$");
  RegExp cropPageRegex = RegExp(r"/dashboard/crops");
  RegExp landPageRegex = RegExp(r"/dashboard/lands");
  RegExp pesticidePageRegex = RegExp(r"/dashboard/pesticides");
  RegExp unitConversionPageRegex = RegExp(r"/dashboard/unit_conversion");
  RegExp reportPageRegex = RegExp(r"/report$");

  if (dashboardPageRegex.hasMatch(location)) {
    result = AppPages.Dashboard;
  } else if (cropPageRegex.hasMatch(location)) {
    result = AppPages.Crop;
  } else if (landPageRegex.hasMatch(location)) {
    result = AppPages.Land;
  } else if (pesticidePageRegex.hasMatch(location)) {
    result = AppPages.Pesticide;
  } else if (unitConversionPageRegex.hasMatch(location)) {
    result = AppPages.UnitConversion;
  } else if (reportPageRegex.hasMatch(location)) {
    result = AppPages.Report;
  } else {
    result = AppPages.Other;
  }

  GetIt.I<Logger>().i("Active page is $result");
  return result;
}

class MainPage extends StatelessWidget {
  final Widget child;
  final AddFABController fabController = AddFABController();
  MainPage({super.key, required this.child}) {
    if (!GetIt.I.isRegistered<AddFABController>()) {
      GetIt.I.registerSingleton<AddFABController>(fabController);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: GetIt.I<Repository>().getBlocProviders(),
      child: MainScaffold(child: child),
    );
  }
}

class MainScaffold extends StatelessWidget {
  final Widget child;

  static _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).location;
    GetIt.I<Logger>().i("Here: $location");
    if (location.startsWith('dashboard')) {
      return 0;
    } else if (location.startsWith('/report')) {
      return 2;
    }
    return 0;
  }

  const MainScaffold({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    /* SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark); */
    return Scaffold(
      body: child,
      extendBody: true,
      // TODO: Add notch to FAB outside
      floatingActionButton: FloatingActionButton(
        backgroundColor: appPrimaryColor,
        highlightElevation: 4,
        splashColor: Colors.transparent,
        onPressed: () async {
          await GetIt.I<AddFABController>().onFabPressed(context);
        },
        elevation: 0,
        child: const Icon(CupertinoIcons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: CupertinoColors.black,
        elevation: 8,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 4,
        child: CupertinoTabBar(
            height: 56,
            currentIndex: _calculateSelectedIndex(context),
            onTap: (index) {
              print(index);
              switch (index) {
                case 0:
                  GoRouter.of(context).go('/dashboard');
                  break;
                case 2:
                  GoRouter.of(context).go('/report');
                  break;
                /* case 3: */
                /*   // TODO: Create a new page for this */
                /*   GoRouter.of(context).go('/task_sheets'); */
                /*   break; */
                /* case 4: */
                /*   GoRouter.of(context).go('/settings'); */
                /*   break; */
                /* default: */
                /*   GoRouter.of(context).go('/task_sheets'); */
              }
            },
            items: [
              const BottomNavigationBarItem(
                  label: 'Dashboard', icon: Icon(Icons.home)),
              BottomNavigationBarItem(icon: Container()),
              /* const BottomNavigationBarItem( */
              /*     label: 'Home', icon: Icon(Icons.home)), */
              /* /1* const BottomNavigationBarItem( *1/ */
              /*     label: 'Finance', icon: Icon(Icons.attach_money)), */
              const BottomNavigationBarItem(
                  label: 'Report', icon: Icon(Icons.pie_chart))
            ]),
      ),
    );
  }
}
