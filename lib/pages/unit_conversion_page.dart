import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../view/add_fab.dart';
import '../view/common_widgets.dart';
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
                ExpandableNotifier(
                  controller: controller,
                  child: Container(
                    child: Expandable(
                        collapsed: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          color: Colors.white54,
                          /* margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4), */
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text("Area"),
                              ),
                              ExpandableButton(
                                  child: const Icon(Icons.expand_more,
                                      size: 24,
                                      color: CupertinoColors.systemGrey)),
                            ],
                          ),
                        ),
                        expanded: Column(
                          children: [
                            Text("Area"),
                            Text("Expanded"),
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
