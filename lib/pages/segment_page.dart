import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:localization/localization.dart';
import 'package:logger/logger.dart';
import 'package:pesticide/pages/crop_page.dart';
import 'package:pesticide/pages/land_page.dart';
import 'package:pesticide/pages/pesticide_page.dart';
import 'package:pesticide/pages/report_page.dart';
import 'package:pesticide/pages/segment_detail_page.dart';
import 'package:pesticide/pages/unit_conversion_page.dart';

class SegmentDetailPage extends StatelessWidget {
  final String page;
  const SegmentDetailPage({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    GetIt.I<Logger>().w("Building Whole Detail Page");

    Widget pageWidget = const SegmentDetailWidget();

    if (page == 'lands') {
      pageWidget = const LandPageWidget();
    } else if (page == 'crops') {
      pageWidget = const CropPageWidget();
    } else if (page == 'pesticides') {
      pageWidget = const PesticidePageWidget();
    } else if (page == 'unit_conversion') {
      pageWidget = const UnitConversionPageWidget();
    }
    /* else if (page == 'report') { */
    /*   pageWidget = const ReportPageWidget(); */
    /* } */

    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          /* heroTag: 'HERO TAG', */
          border: null,
          backgroundColor: Colors.white,
          leading: GoBackToSheetsTabButton(),
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 4),
          constraints: const BoxConstraints.expand(),
          color: Colors.white,
          child: pageWidget,
        ));
  }
}

class GoBackToSheetsTabButton extends StatelessWidget {
  const GoBackToSheetsTabButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        GoRouter.of(context).go('/dashboard');
      },
      child: Row(children: [
        Container(
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 24,
            color: CupertinoTheme.of(context).primaryColor,
          ),
        ),
        Flexible(
          child: Text('Dashboard'.i18n(),
              style: TextStyle(
                fontSize: 18,
                color: CupertinoTheme.of(context).primaryColor,
              )),
        ),
      ]),
    );
  }
}
