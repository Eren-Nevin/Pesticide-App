import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../model/models.dart';

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
                  const CupertinoSliverNavigationBar(
                    stretch: true,
                    largeTitle: Text('Dashboard'),
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
    return ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(color: Colors.grey, height: 0, thickness: 0);
        },
        itemCount: segementPositions.length,
        itemBuilder: (context, index) {
          Segment? segment = segementPositions[index];
          if (segment == null) {
            throw Exception('Segment not found');
          }
          return Align(
              /* key: ValueKey(valueKey), */
              alignment: Alignment.topCenter,
              child: DashboardRowContainerWidget(
                color: segment.color,
                pageName: segment.title,
                pagePath: segment.pagePath,
                numberOfItems: segment.number,
              ));
        });
  }
}

// If taskSheetId is equal to -1, it means it should show unlisted sheet
class DashboardRowContainerWidget extends StatelessWidget {
  final String pageName;
  final String pagePath;
  final int color;
  final int numberOfItems;
  const DashboardRowContainerWidget(
      {super.key,
      required this.pageName,
      required this.pagePath,
      required this.color,
      required this.numberOfItems});

  @override
  Widget build(BuildContext context) {
    print(pagePath);
    print(pagePath);
    print(pagePath);
    Widget rowWidget = DashboardRowWidget(
        title: pageName, color: color, numberOfItems: numberOfItems);

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
  const DashboardRowWidget({
    super.key,
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