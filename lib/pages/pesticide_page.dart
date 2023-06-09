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

class PesticidePageWidget extends StatelessWidget {
  const PesticidePageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    AppState appState = context.watch<AppStateBloc>().state;

    List<PesticideApplication> pesticides = appState.pesticides;

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
                    title: 'Pesticides'.i18n(),
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
                        PesticideApplication pesticide = pesticides[index];

                        Land? land = getLandById(appState, pesticide.landId);
                        Crop? crop = getCropById(appState, pesticide.cropId);

                        /* List<int>? harvestDates = crop.harvestDates; */
                        /* List<CardSingleItem> harvestDatesItems = []; */
                        /* if (harvestDates != null) { */
                        /*   harvestDates.asMap().forEach((i, v) { */
                        /*     harvestDatesItems.add(CardSingleItem( */
                        /*       title: 'Harvest Date ${i + 1}:', */
                        /*       value: */
                        /*           v == 0 ? 'Not Set' : convertIntTimeToDate(v), */
                        /*     )); */
                        /*   }); */
                        /* } */

                        List<CardSingleItem> cardItems = [
                          CardSingleItem(
                              title: 'Name'.i18n() + ':',
                              value: pesticide.pesticide),
                          CardSingleItem(
                              title: 'Land'.i18n(),
                              value: land != null
                                  ? land.name
                                  : 'Not Available'.i18n()),
                          CardSingleItem(
                              title: 'Crop'.i18n(),
                              value: crop != null
                                  ? crop.name
                                  : 'Not Available'.i18n()),
                          CardSingleItem(
                              title: 'Problem'.i18n() + ':',
                              value: pesticide.problem),
                          CardSingleItem(
                              title: 'Dose'.i18n() + ':',
                              value: pesticide.dose.toString()),
                          CardSingleItem(
                              title: 'Application Date'.i18n() + ':',
                              value: convertIntTimeToDate(
                                  pesticide.applicationDate)),
                          CardSingleItem(
                              title: 'Harvest Interval'.i18n() + ':',
                              value:
                                  '${pesticide.harvestIntervalDays.toString()}' +
                                      ' ' +
                                      'Days'.i18n()),
                        ];
                        return SegmentCard(itemCards: cardItems);
                      },
                      itemCount: pesticides.length),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
