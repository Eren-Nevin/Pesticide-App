import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pesticide/pages/dashboard_page.dart';

import '../view/add_fab.dart';
import 'home.dart';

class SegmentDetailWidget extends StatelessWidget {
  const SegmentDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    // TODO: Should have used select to prevent updating on overal models
    // change
    return SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsetsDirectional.all(4),
                  child: const SegmentDetailTitleRowWidget(
                    title: 'Crop',
                    color: 0xFFE4E4E4,
                  ),
                ),
                const Divider(
                  color: Color(0xFFE4E4E4),
                  thickness: 2,
                  height: 12,
                ),
                Flexible(
                  child: false
                      ? Container(
                          /* color: Colors.yellow, */
                          /* padding: const EdgeInsets.symmetric(vertical: 4), */
                          /* child: Builder(builder: (context) { */
                          /*   tasksForThisTaskSheet.sort(sortingTaskFunction); */
                          /*   return TaskSheetDetailTaskExpansionListWidget( */
                          /*       scrollController: scrollController, */
                          /*       tasks: tasksForThisTaskSheet, */
                          /*       taskSheetId: taskSheetId); */
                          /* }) */

                          )
                      : Container(
                          /* color: Colors.transparent, */
                          /* child: const Center( */
                          /*     child: TasksAreDoneEmptyState(height: 400)), */
                          ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SegmentDetailTitleRowWidget extends StatelessWidget {
  final int color;
  final String title;
  const SegmentDetailTitleRowWidget(
      {super.key, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: AlignmentDirectional.topStart,
            child: RowColorBadge(color: color),
          ),
          Text(
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 26,
              ),
              title),
          /* TaskSheetDetailPageEditTaskSheetIcon( */
          /*     taskSheetsBloc: taskSheetsBloc, */
          /*     userEventsBloc: userEventsBloc, */
          /*     userModelsBloc: userModelsBloc, */
          /*     authenticationBloc: authenticationBloc, */
          /*     taskSheetId: taskSheetId), */
        ]);
  }
}
