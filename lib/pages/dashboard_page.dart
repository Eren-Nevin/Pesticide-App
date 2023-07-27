import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:localization/localization.dart';
import 'package:logger/logger.dart';
import 'package:pesticide/blocs/app_state_bloc.dart';
import 'package:pesticide/blocs/authentication_bloc.dart';
import 'package:pesticide/blocs/events/app_state_events.dart';
import 'package:pesticide/blocs/events/authentication_events.dart';

import '../model/app_state.dart';
import '../model/authentication_state.dart';
import '../model/models.dart';

// logout function
Future<void> logout(
    AuthenticationBloc authBloc, AppStateBloc appStateBloc) async {
  authBloc.add(AuthLogoutEvent());
  appStateBloc.add(AppResetEvent());
}

Future<void> deleteUser(
    AuthenticationBloc authBloc, AppStateBloc appStateBloc) async {
  AuthenticationState authState = authBloc.state;
  int userId = authState.loggedInUserGlobalId;

  GetIt.I<Logger>().w("Deleting User $userId");

  Dio client = Dio();

  Response response = await client.post("$serverAddress/api/remove_user",
      data: {
        'payload': {'uid': userId}
      },
      options: Options().copyWith(responseType: ResponseType.json));

  GetIt.I<Logger>().d("Returned response from server rest api $response");

  GetIt.I<Logger>().w(response.data);

  /* // TODO: Make  proper  success and error handling */
  if (response.data['status'] == 'OK') {
    await logout(authBloc, appStateBloc);
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: SafeArea(
          child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  CupertinoSliverNavigationBar(
                    stretch: true,
                    largeTitle: Text('Dashboard'.i18n()),
                    trailing: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        child: Container(
                            height: 64,
                            alignment: AlignmentDirectional.bottomEnd,
                            padding: const EdgeInsetsDirectional.symmetric(
                                horizontal: 8),
                            child: Text(
                              "Logout".i18n(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: Colors.green,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                            )),
                        onTap: () async {
                          AuthenticationBloc authBloc =
                              context.read<AuthenticationBloc>();
                          AppStateBloc appBloc = context.read<AppStateBloc>();
                          await showCupertinoModalPopup<void>(
                            context: context,
                            builder: (BuildContext context) =>
                                CupertinoAlertDialog(
                              title: const Text('Alert'),
                              content: const Text(
                                  "Be Cautious: by pressing Delete User, all your data will be lost and you can't log back again"),
                              actions: <CupertinoDialogAction>[
                                CupertinoDialogAction(
                                  /// This parameter indicates this action is the default,
                                  /// and turns the action's text to bold text.
                                  isDefaultAction: true,
                                  onPressed: () async {
                                    // Navigator.pop(context);
                                    await logout(authBloc, appBloc);
                                  },
                                  child: const Text('Logout'),
                                ),
                                CupertinoDialogAction(
                                  /// This parameter indicates the action would perform
                                  /// a destructive action such as deletion, and turns
                                  /// the action's text color to red.
                                  isDestructiveAction: true,
                                  onPressed: () async {
                                    // Navigator.pop(context);
                                    await deleteUser(authBloc, appBloc);
                                  },
                                  child: const Text('Delete User'),
                                ),
                              ],
                            ),
                          );
                        }),
                  )
                ];
              },
              body: Container(
                color: Colors.white,
                constraints: const BoxConstraints.expand(),
                child: const DashboardPageContent(),
              ))),
    );
  }
}

class DashboardPageContent extends StatelessWidget {
  const DashboardPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    AppState appState = context.watch<AppStateBloc>().state;
    return ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(color: Colors.grey, height: 0, thickness: 0);
        },
        itemCount: segementPositions.length,
        itemBuilder: (context, index) {
          Segment? segment = segementPositions[index];
          int numberOfItems = 0;
          if (segment == null) {
            throw Exception('Segment not found');
          }
          if (segment.title == 'Lands') {
            numberOfItems = appState.lands.length;
          } else if (segment.title == 'Crops') {
            numberOfItems = appState.crops.length;
          } else if (segment.title == 'Pesticides') {
            numberOfItems = appState.pesticides.length;
          }
          return Align(
              /* key: ValueKey(valueKey), */
              alignment: Alignment.topCenter,
              child: DashboardRowContainerWidget(
                  color: segment.color,
                  pageName: segment.title.i18n(),
                  pagePath: segment.pagePath,
                  showNumber: segment.title != 'Unit Conversion',
                  numberOfItems: numberOfItems));
        });
  }
}

// If taskSheetId is equal to -1, it means it should show unlisted sheet
class DashboardRowContainerWidget extends StatelessWidget {
  final String pageName;
  final String pagePath;
  final int color;
  final int numberOfItems;
  final bool showNumber;
  const DashboardRowContainerWidget(
      {super.key,
      this.showNumber = true,
      required this.pageName,
      required this.pagePath,
      required this.color,
      required this.numberOfItems});

  @override
  Widget build(BuildContext context) {
    Widget rowWidget = DashboardRowWidget(
        title: pageName,
        color: color,
        numberOfItems: numberOfItems,
        showNumber: showNumber);

    return Container(
      alignment: AlignmentDirectional.topStart,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          GoRouter.of(context).go(pagePath);
        },
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: SizedBox(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: rowWidget,
            ),
          ),
        ),
      ),
    );
  }
}

class DashboardRowWidget extends StatelessWidget {
  final String title;
  final int color;
  final int numberOfItems;
  final bool showNumber;
  const DashboardRowWidget({
    super.key,
    this.showNumber = true,
    required this.title,
    required this.numberOfItems,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Builder(builder: (context) {
              return RowColorBadge(color: color);
            }),
            Container(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 26,
                    ),
                    title)),
            Spacer(),
            if (showNumber)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                alignment: AlignmentDirectional.topEnd,
                child: Builder(builder: (context) {
                  return Text(
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 26,
                      ),
                      numberOfItems.toString());
                }),
              ),
          ]),
    );
  }
}

class RowColorBadge extends StatelessWidget {
  const RowColorBadge({
    super.key,
    required this.color,
  });

  final int color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 8,
      decoration: BoxDecoration(
          color: Color(color), borderRadius: BorderRadius.circular(4)),
      margin: const EdgeInsets.only(right: 12),
    );
  }
}
