import 'package:flutter/services.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../view/add_fab.dart';
import '../view/common_widgets.dart';
import '../view/unit_conversion_widgets.dart';
import 'home.dart';

class UnitConversionPageWidget extends StatelessWidget {
  const UnitConversionPageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    ExpandableController controller = ExpandableController();
    GetIt.I<AddFABController>()
        .setOnPressed(AppPages.UnitConversion, (context) async {});

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
                    title: 'Unit Conversion',
                    color: 0xFFb8b8b8,
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: Color(0xFFE4E4E4),
                  height: 12,
                ),
                Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsetsDirectional.symmetric(vertical: 8),
                      child: ExpandableNotifier(
                          child: Expandable(
                              collapsed: const UnitConversionTitleWidget(
                                  title: "Area", expanded: false),
                              expanded: Column(
                                children: const [
                                  UnitConversionTitleWidget(
                                    title: "Area",
                                    expanded: true,
                                  ),
                                  UnitConversionExpandedWidget(
                                    child: UnitConversionAreaWidget(),
                                  ),
                                ],
                              ))),
                    ),
                    Container(
                      margin:
                          const EdgeInsetsDirectional.symmetric(vertical: 8),
                      child: ExpandableNotifier(
                          child: Expandable(
                              collapsed: const UnitConversionTitleWidget(
                                  title: "Volume", expanded: false),
                              expanded: Column(
                                children: const [
                                  UnitConversionTitleWidget(
                                    title: "Volume",
                                    expanded: true,
                                  ),
                                  UnitConversionExpandedWidget(
                                    child: UnitConversionVolumeWidget(),
                                  ),
                                ],
                              ))),
                    ),
                    Container(
                      margin:
                          const EdgeInsetsDirectional.symmetric(vertical: 8),
                      child: ExpandableNotifier(
                          child: Expandable(
                              collapsed: const UnitConversionTitleWidget(
                                  title: "Weight", expanded: false),
                              expanded: Column(
                                children: const [
                                  UnitConversionTitleWidget(
                                    title: "Weight",
                                    expanded: true,
                                  ),
                                  UnitConversionExpandedWidget(
                                    child: UnitConversionWeightWidget(),
                                  ),
                                ],
                              ))),
                    ),
                    Container(
                      margin:
                          const EdgeInsetsDirectional.symmetric(vertical: 8),
                      child: ExpandableNotifier(
                          child: Expandable(
                              collapsed: const UnitConversionTitleWidget(
                                  title: "Dose", expanded: false),
                              expanded: Column(
                                children: const [
                                  UnitConversionTitleWidget(
                                    title: "Dose",
                                    expanded: true,
                                  ),
                                  UnitConversionExpandedWidget(
                                    child: UnitConversionDoseWidget(),
                                  ),
                                ],
                              ))),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UnitConversionExpandedWidget extends StatelessWidget {
  final Widget child;
  const UnitConversionExpandedWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: Colors.grey),
        ),
        padding: EdgeInsets.all(8),
        child: child);
  }
}

class UnitConversionTitleWidget extends StatelessWidget {
  final String title;
  final bool expanded;
  const UnitConversionTitleWidget({
    required this.title,
    required this.expanded,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        color: Colors.white54,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            ExpandableButton(
                child: Icon(expanded ? Icons.expand_less : Icons.expand_more,
                    size: 24, color: CupertinoColors.systemGrey)),
          ],
        ));
  }
}
