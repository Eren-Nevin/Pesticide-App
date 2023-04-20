// Context should have access to providers
import 'package:pesticide/blocs/app_state_bloc.dart';
import 'package:pesticide/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:pesticide/view/add_modal.dart';

import '../blocs/authentication_bloc.dart';
/* import '../blocs/events/temp_model_events.dart'; */
/* import '../blocs/events/user_events.dart'; */
/* import '../blocs/models_bloc.dart'; */
/* import '../blocs/temp_models_bloc.dart'; */
/* import '../blocs/user_events_bloc.dart'; */
/* import '../blocs/user_model_bloc.dart'; */
/* import '../models/model_utlities.dart'; */
/* import 'dialogs/add_task_dialog.dart'; */

// TODO: Make finding page a separate function that returns enum

typedef FabClickHandler = Future<void> Function(BuildContext context);

class AddFABController {
  Map<AppPages, FabClickHandler> onPressedPageMap = {};

  AppPages _activePage = AppPages.Other;
  Future<void> defaultOnPressed(BuildContext context) async {
    print("FAB CLICKED");
    showAddStuffDialog(context, appStateBloc: context.read<AppStateBloc>());
  }

  void setOnPressed(AppPages page, FabClickHandler onPressed) {
    onPressedPageMap[page] = onPressed;
  }

  void removeOnPressed(AppPages page) {
    onPressedPageMap.remove(page);
  }

  Future<void> onFabPressed(BuildContext context) async {
    _activePage = getCurrentPage(context);

    FabClickHandler clickHandler =
        onPressedPageMap[_activePage] ?? defaultOnPressed;
    await clickHandler(context);
  }
}
