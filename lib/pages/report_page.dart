import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get_it/get_it.dart';
import 'package:localization/localization.dart';
import 'package:logger/logger.dart';
import 'package:pesticide/blocs/app_state_bloc.dart';
import 'package:pesticide/utilities/utils.dart';

import '../model/app_state.dart';
import '../model/models.dart';
import '../view/add_fab.dart';
import '../view/common_widgets.dart';

/* class DashboardPage extends StatelessWidget { */
/*   const DashboardPage({super.key}); */

/*   @override */
/*   Widget build(BuildContext context) { */
/*     return CupertinoPageScaffold( */
/*       backgroundColor: Colors.white, */
/*       child: SafeArea( */
/*           child: NestedScrollView( */
/*               headerSliverBuilder: (context, innerBoxIsScrolled) { */
/*                 return [ */
/*                   CupertinoSliverNavigationBar( */
/*                     stretch: true, */
/*                     largeTitle: Text('Dashboard'.i18n()), */
/*                   ) */
/*                 ]; */
/*               }, */
/*               body: Container( */
/*                 color: Colors.white, */
/*                 constraints: const BoxConstraints.expand(), */
/*                 child: const DashboardPageContent(), */
/*               ))), */
/*     ); */
/*   } */
/* } */
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

/* class GoBackToSheetsTabButton extends StatelessWidget { */
/*   const GoBackToSheetsTabButton({ */
/*     super.key, */
/*   }); */

/*   @override */
/*   Widget build(BuildContext context) { */
/*     return GestureDetector( */
/*       onTap: () async { */
/*         GoRouter.of(context).go('/dashboard'); */
/*       }, */
/*       child: Row(children: [ */
/*         Container( */
/*           child: Icon( */
/*             Icons.arrow_back_ios_new, */
/*             size: 24, */
/*             color: CupertinoTheme.of(context).primaryColor, */
/*           ), */
/*         ), */
/*         Flexible( */
/*           child: Text('Dashboard'.i18n(), */
/*               style: TextStyle( */
/*                 fontSize: 18, */
/*                 color: CupertinoTheme.of(context).primaryColor, */
/*               )), */
/*         ), */
/*       ]), */
/*     ); */
/*   } */
/* } */

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

    return SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /* Container( */
                /*   padding: const EdgeInsetsDirectional.all(4), */
                /*   child: SegmentDetailTitleRowWidget( */
                /*     title: 'Report'.i18n(), */
                /*     color: 0xFFb8b8b8, */
                /*   ), */
                /* ), */
                /* const Divider( */
                /*   thickness: 2, */
                /*   color: Color(0xFFE4E4E4), */
                /*   height: 12, */
                /* ), */
                Expanded(
                  child: InteractiveViewer(
                      constrained: false,
                      child: Html(
                        data: generateReportHTML(appStateBloc.state),
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

String generateReportHTML(AppState appState) {
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

      GetIt.I<Logger>().e(land);
      GetIt.I<Logger>().e(crop);
      GetIt.I<Logger>().e(thisCropPesticides);
      /* GetIt.I<Logger>().e(appState.pesticides); */

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
        return generateSinglePesticideHTML(harvestDate, thisCropPesticides[i]);
      }

      String firstPesticideRow =
          crop.harvestDates!.isNotEmpty ? generateNthPesticideHTML(0) : '';

      /* GetIt.I<Logger>().w(totalRows); */

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

    /* GetIt.I<Logger>().w(landsHTML); */

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
  Parcel
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
  Pesticide Applications
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
    Spraying Date
  </p>
  </td>
  </tr>


    ${generateLandReportsHTML(appState)}


</tbody></table>
''';
  return reportTemplate;
}
