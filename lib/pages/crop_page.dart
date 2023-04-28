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
import 'package:pesticide/utilities/utils.dart';
import 'package:pesticide/view/common_widgets.dart';

import '../view/add_fab.dart';
import 'home.dart';

class CropPageWidget extends StatelessWidget {
  const CropPageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    GetIt.I<AddFABController>().setOnPressed(AppPages.Crop, (context) async {});

    AppState appState = context.read<AppStateBloc>().state;

    List<Crop> crops = appState.crops;

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
                    title: 'Crops'.i18n(),
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
                        Crop crop = crops[index];
                        Land? land = getLandById(appState, crop.landId);
                        List<int>? harvestDates = crop.harvestDates;
                        List<CardSingleItem> harvestDatesItems = [];
                        if (harvestDates != null) {
                          harvestDates.asMap().forEach((i, v) {
                            harvestDatesItems.add(CardSingleItem(
                              title: 'Harvest Date'.i18n() + ' ${i + 1}:',
                              value: v == 0
                                  ? 'Not Set'.i18n()
                                  : convertIntTimeToDate(v),
                            ));
                          });
                        }

                        List<CardSingleItem> cardItems = [
                          CardSingleItem(title: 'Name:', value: crop.name),
                          CardSingleItem(
                              title: 'Land'.i18n(),
                              value: land != null
                                  ? land.name
                                  : 'Not Available'.i18n()),
                          CardSingleItem(
                              title: 'Planting Date'.i18n() + ':',
                              value: convertIntTimeToDate(crop.plantingDate)),
                          ...harvestDatesItems
                        ];
                        return SegmentCard(itemCards: cardItems);
                      },
                      itemCount: crops.length),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
