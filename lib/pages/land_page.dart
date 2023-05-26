import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:localization/localization.dart';
import 'package:pesticide/blocs/app_state_bloc.dart';
import 'package:pesticide/model/app_state.dart';
import 'package:pesticide/model/models.dart';
import 'package:pesticide/pages/dashboard_page.dart';
import 'package:pesticide/view/common_widgets.dart';

import '../view/add_fab.dart';
import 'home.dart';

class LandPageWidget extends StatelessWidget {
  const LandPageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    // TODO: Should have used select to prevent updating on overal models
    // change
    /* GetIt.I<AddFABController>().setOnPressed(AppPages.Crop, (context) async {}); */

    List<Land> lands = context.watch<AppStateBloc>().state.lands;

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
                  child: SegmentDetailTitleRowWidget(
                    title: 'Lands'.i18n(),
                    color: 0xFFb8b8b8,
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: Color(0xFFE4E4E4),
                  height: 12,
                ),
                Flexible(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        Land land = lands[index];
                        List<CardSingleItem> cards = [
                          CardSingleItem(
                              title: 'Name'.i18n() + ':', value: land.name),
                          CardSingleItem(
                              title: 'Location'.i18n() + ':',
                              value: land.location),
                          CardSingleItem(
                              title: 'Slope'.i18n() + ':',
                              value: land.slope.toString()),
                          CardSingleItem(
                              title: 'Area'.i18n() + ':',
                              value: land.area.toString()),
                          CardSingleItem(
                              title: 'Structure'.i18n() + ':',
                              value: land.structure.name.i18n()),
                          CardSingleItem(
                              title: 'Texture'.i18n() + ':',
                              value: land.texture.name.i18n()),
                        ];
                        return SegmentCard(itemCards: cards);
                      },
                      itemCount: lands.length),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
