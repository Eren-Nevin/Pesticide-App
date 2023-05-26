import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get_it/get_it.dart';
import 'package:localization/localization.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pesticide/blocs/app_state_bloc.dart';
import 'package:pesticide/utilities/utils.dart';

import '../model/app_state.dart';
import '../model/models.dart';
import '../view/add_fab.dart';
import '../view/common_widgets.dart';

import 'package:share_plus/share_plus.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

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
                    largeTitle: Text('Report'.i18n()),
                    trailing: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        child: Container(
                            height: 64,
                            alignment: AlignmentDirectional.bottomEnd,
                            padding: const EdgeInsetsDirectional.symmetric(
                                horizontal: 8),
                            child: Text(
                              "Share".i18n(),
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
                          String htmlReport = generateHTMLReport(
                              context.read<AppStateBloc>().state);
                          Directory directory =
                              await getApplicationDocumentsDirectory();
                          await writeReportToFile(htmlReport);
                          Share.shareXFiles(
                            [XFile('${directory.path}/report.html')],
                          );
                        }),
                  )
                ];
              },
              body: Container(
                color: Colors.white,
                constraints: const BoxConstraints.expand(),
                child: const ReportPageWidget(),
              ))),
    );
  }
}

class ReportPageWidget extends StatelessWidget {
  const ReportPageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    // TODO: Should have used select to prevent updating on overal models
    // change
    /* GetIt.I<AddFABController>().setOnPressed(AppPages.Crop, (context) async {}); */

    AppStateBloc appStateBloc = context.watch<AppStateBloc>();

    String htmlReport = generateHTMLReport(appStateBloc.state);

    return SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: InteractiveViewer(
                      constrained: false,
                      child: Html(
                        data: htmlReport,
                        shrinkWrap: true,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> writeReportToFile(String reportHTML) async {
  final Directory directory = await getApplicationDocumentsDirectory();
  final File file = File('${directory.path}/report.html');
  await file.writeAsString(reportHTML, flush: true);
}

String generateSingleTD(int rowSpan, String content) {
  return '''
<td rowspan="$rowSpan" style="border-collapse: collapse; border:solid black 1.0pt;text-align: center; vertical-align: middle;
  background:#92D050;padding:0in 5.4pt 0in 5.4pt;">
  <p align="center"
  style="margin-bottom:0in;text-align:center;line-height:normal;">
    $content
  </p>
  </td>
  ''';
}

String generateHTMLReport(AppState appState) {
  String generateLandReportsHTML(AppState appState) {
    String generateSingleLandHTML(AppState appState, Land land) {
      Crop? crop = findALandCrop(appState, land);
      if (crop == null) {
        return '';
      }
      List<PesticideApplication> thisCropPesticides =
          findALandCropPairPesiticdeApplications(appState, land, crop);
      int totalRows =
          crop.harvestDates!.isNotEmpty ? thisCropPesticides.length : 1;

      /* String generateSingleCropHTML( */
      /*     AppState appState, Crop crop, List<PesticideApplication> pesticides) { */
      /*   String generateSinglePesticideHTML( */
      /*       PesticideApplication pesticide, int harvestDate) { */
      /*     return ''' */
      /*           ${generateSingleTD(1, pesticide.pesticide)} */
      /*           ${generateSingleTD(1, pesticide.dose.toString())} */
      /*           ${generateSingleTD(1, convertIntTimeToDate(pesticide.applicationDate))} */
      /*           ${generateSingleTD(1, convertIntTimeToDate(harvestDate))} */
      /*       '''; */
      /*   } */

      /*   List<String> pesticidesHTML = []; */
      /*   for (int i = 0; i < pesticides.length; i++) { */
      /*     String singlePesticideHTML = */
      /*         generateSinglePesticideHTML(pesticides[i], crop.harvestDates![i]); */

      /*     pesticidesHTML.add(singlePesticideHTML); */
      /*   } */

      /*   String result = ''' */
      /*       ${generateSingleTD(pesticides.length, crop.name)} */
      /*       ${generateSingleTD(pesticides.length, convertIntTimeToDate(crop.plantingDate))} */
      /*       ${pesticidesHTML.join('\n')} */
      /*     '''; */

      /*   return result; */
      /* } */

      /* List<String> cropsHTML = []; */

      /* for (Crop crop in pesticideMap.keys) { */
      /*   cropsHTML */
      /*       .add(generateSingleCropHTML(appState, crop, pesticideMap[crop]!)); */
      /* } */

      String generateSinglePesticideHTML(
          int harvestDate, PesticideApplication pesticide) {
        return '''
                ${generateSingleTD(1, pesticide.pesticide)}
                ${generateSingleTD(1, pesticide.dose.toString())}
                ${generateSingleTD(1, convertIntTimeToDate(pesticide.applicationDate))}
                ${generateSingleTD(1, harvestDate == 0 ? '-' : convertIntTimeToDate(harvestDate))}
            ''';
      }

      String generateNthPesticideHTML(int i) {
        int harvestDate = 0;
        if (i < crop.harvestDates!.length) {
          harvestDate = crop.harvestDates![i];
        }
        // TODO: Fix this. We should check if pesticide exists and if not, show
        // '-' instead
        return generateSinglePesticideHTML(harvestDate, thisCropPesticides[i]);
      }

      String firstPesticideRow =
          crop.harvestDates!.isNotEmpty ? generateNthPesticideHTML(0) : '';

      List<String> otherPesticideRowsList = [];

      for (int i = 1; i < thisCropPesticides.length; i++) {
        String row = '''
            <tr>
                ${generateNthPesticideHTML(i)}
            </tr>
        ''';
        otherPesticideRowsList.add(row);
      }

      String otherPesticideRows = otherPesticideRowsList.join('\n');

      String result = '''
<tr>
${generateSingleTD(totalRows, land.name)}
${generateSingleTD(totalRows, crop.name)}
${generateSingleTD(totalRows, convertIntTimeToDate(crop.plantingDate))}
$firstPesticideRow
</tr>
$otherPesticideRows
  ''';

      return result;
    }

    List<Land> lands = appState.lands;
    String landsHTML = lands
        /* .where((Land land) => land.landId == 1) */
        .map((Land land) => generateSingleLandHTML(appState, land))
        .join('\n');

    return landsHTML;
  }

  String reportTemplate = '''
<table class="ab" border="1" cellspacing="0" cellpadding="0">
 <tbody>
 <tr>
  <td rowspan="2" style="border-collapse: collapse; border:solid black 1.0pt;text-align: center; vertical-align: middle;
  background:#92D050;padding:0in 5.4pt 0in 5.4pt">
  <p 
  style="margin-bottom:0in;text-align:center;line-height:normal;">
  ${"Land".i18n()}
  </p>
  </td>
<td rowspan="2" style="border-collapse: collapse; border:solid black 1.0pt;text-align: center; vertical-align: middle;
  background:#92D050;padding:0in 5.4pt 0in 5.4pt;">
  <p 
  style="margin-bottom:0in;text-align:center;line-height:normal;">
  ${"Crop".i18n()}
  </p>
  </td>
<td rowspan="2" style="border-collapse: collapse; border:solid black 1.0pt;text-align: center; vertical-align: middle;
  background:#92D050;padding:0in 5.4pt 0in 5.4pt;">
  <p 
  style="margin-bottom:0in;text-align:center;line-height:normal;">
  ${"Planting Date".i18n()}
  </p>
  </td>

<td rowspan="1" colspan="3" style="border-collapse: collapse; border:solid black 1.0pt;text-align: center; vertical-align: middle; background:#92D050;padding:0in 5.4pt 0in 5.4pt;">
  <p align="center"
  style="margin-bottom:0in;text-align:center;line-height:normal;">
  ${"Pesticide Applications".i18n()}
  </p>
  </td>

<td rowspan="2" style="border-collapse: collapse; border:solid black 1.0pt;text-align: center; vertical-align: middle;
  background:#92D050;padding:0in 5.4pt 0in 5.4pt;">
  <p align="center"
  style="margin-bottom:0in;text-align:center;line-height:normal;">
  ${"Harvest Date".i18n()}
  </p>
  </td>

  </tr>
  <tr>
<td rowspan="1" style="border-collapse: collapse; border:solid black 1.0pt;text-align: center; vertical-align: middle;
  background:#92D050;padding:0in 5.4pt 0in 5.4pt;">
  <p align="center"
  style="margin-bottom:0in;text-align:center;line-height:normal;">
  ${"Pesticide".i18n()}
  </p>
  </td>
<td rowspan="1" style="border-collapse: collapse; border:solid black 1.0pt;text-align: center; vertical-align: middle;
  background:#92D050;padding:0in 5.4pt 0in 5.4pt;">
  <p align="center"
  style="margin-bottom:0in;text-align:center;line-height:normal;">
  ${"Dose".i18n()}
  </p>
  </td>
<td rowspan="1" style="border-collapse: collapse; border:solid black 1.0pt;text-align: center; vertical-align: middle;
  background:#92D050;padding:0in 5.4pt 0in 5.4pt;">
  <p align="center"
  style="margin-bottom:0in;text-align:center;line-height:normal;">
    ${"Application Date".i18n()}
  </p>
  </td>
  </tr>


    ${generateLandReportsHTML(appState)}


</tbody></table>
''';
  return reportTemplate;
}
