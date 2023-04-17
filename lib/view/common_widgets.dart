import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overflow_view/overflow_view.dart';

import 'package:percent_indicator/percent_indicator.dart';
import 'package:pesticide/pages/dashboard_page.dart';

class ToastWidget extends StatelessWidget {
  final String message;
  final Color backgroundColor;
  final Color? messageColor;
  final Icon? icon;
  const ToastWidget(
      {super.key,
      required this.message,
      this.backgroundColor = Colors.greenAccent,
      this.messageColor,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: backgroundColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) icon!,
          if (icon != null)
            SizedBox(
              width: 12.0,
            ),
          Text(
            message,
            style: TextStyle(color: messageColor),
          ),
        ],
      ),
    );
  }
}

// Note that the image itself would have overalRadius - borderThickness radius
class CircleAvatarWithBorder extends StatelessWidget {
  final double borderThickness;
  final Color borderColor;
  final double overalRadius;
  final ImageProvider imageProvider;

  const CircleAvatarWithBorder(
      {super.key,
      required this.borderThickness,
      required this.borderColor,
      required this.overalRadius,
      required this.imageProvider});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: overalRadius,
      backgroundColor: borderColor,
      child: CircleAvatar(
        radius: overalRadius - borderThickness,
        foregroundImage: imageProvider,
      ),
    );
  }
}

class UserAvatarWithBorder extends StatelessWidget {
  final double borderThickness;
  final Color borderColor;
  final double overalRadius;
  final String avatarUrl;
  const UserAvatarWithBorder(
      {super.key,
      required this.borderThickness,
      required this.borderColor,
      required this.overalRadius,
      required this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return CircleAvatarWithBorder(
        borderThickness: borderThickness,
        borderColor: borderColor,
        overalRadius: overalRadius,
        imageProvider: NetworkImage(avatarUrl));
  }
}

class SharedUsersIndicatorAvatars extends StatelessWidget {
  final List<ImageProvider> imageProviders;
  const SharedUsersIndicatorAvatars({super.key, required this.imageProviders});

  @override
  Widget build(BuildContext context) {
    return OverflowView(
        spacing: -4,
        builder: (context, remainingItemCount) {
          return Container();
        },
        children: [
          for (ImageProvider imageProvider in imageProviders)
            CircleAvatarWithBorder(
                borderThickness: 1,
                overalRadius: 16,
                borderColor: Colors.teal,
                imageProvider: imageProvider),
        ]);
  }
}

class CombinedTitleAndPriorityStarWidget extends StatelessWidget {
  final String title;
  final int priority;
  final TextStyle priorityTextStyle;
  final TextStyle titleTextStyle;
  static const TextStyle _defaultPriorityTextStyle =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.red);
  static const TextStyle _defaultTitleTextStyle =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: Colors.black);
  /* final FontF */
  const CombinedTitleAndPriorityStarWidget({
    super.key,
    required this.title,
    required this.priority,
    this.priorityTextStyle = _defaultPriorityTextStyle,
    this.titleTextStyle = _defaultTitleTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      if (priority != 0)
        Container(
          margin: const EdgeInsetsDirectional.only(end: 4),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int _ in List.generate(priority, (i) => i))
                  const Icon(CupertinoIcons.star_fill,
                      size: 14, color: CupertinoColors.systemYellow)
              ]),
        ),
      Text(title, style: titleTextStyle),
    ]);
    /* return priority == 0 */
    /*     ? Text(title, style: titleTextStyle) */
    /*     : */
    /*     /1* TextSpan(text: ). *1/ */
    /*     Text.rich(TextSpan(children: [ */
    /*         TextSpan(text: '${'!' * priority} ', style: priorityTextStyle), */
    /*         TextSpan( */
    /*           text: title, */
    /*           style: titleTextStyle, */
    /*         ) */
    /*       ])); */
  }
}

class CombinedTitleAndPriorityWidget extends StatelessWidget {
  final String title;
  final int priority;
  final TextStyle priorityTextStyle;
  final TextStyle titleTextStyle;
  static const TextStyle _defaultPriorityTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red);
  static const TextStyle _defaultTitleTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black);
  /* final FontF */
  const CombinedTitleAndPriorityWidget({
    super.key,
    required this.title,
    required this.priority,
    this.priorityTextStyle = _defaultPriorityTextStyle,
    this.titleTextStyle = _defaultTitleTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return priority == 0
        ? Text(title, style: titleTextStyle)
        :
        /* TextSpan(text: ). */
        Text.rich(TextSpan(children: [
            TextSpan(text: '${'!' * priority} ', style: priorityTextStyle),
            TextSpan(
              text: title,
              style: titleTextStyle,
            )
          ]));
  }
}

class CircularTaskProgressBarWidget extends StatelessWidget {
  final double progess;
  const CircularTaskProgressBarWidget({Key? key, required this.progess})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 10,
      lineWidth: 3,
      percent: progess,
      progressColor: Colors.lightBlue,
    );
  }
}

class LinearTaskProgressBarWidget extends StatelessWidget {
  final double borderRadius;
  final double progess;
  final double? width;
  final double? lineHeight;
  final Widget? centerWidget;
  const LinearTaskProgressBarWidget(
      {Key? key,
      required this.progess,
      this.width,
      this.lineHeight,
      this.borderRadius = 4,
      this.centerWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      barRadius: Radius.circular(borderRadius),
      width: width,
      lineHeight: lineHeight ?? 5.0,
      percent: progess,
      progressColor: Colors.lightBlue,
      center: centerWidget,
    );
  }
}

class SquaredBackgroundIcon extends StatelessWidget {
  const SquaredBackgroundIcon({
    super.key,
    required this.iconBackgroundColor,
    required this.icon,
  });

  final Color iconBackgroundColor;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: iconBackgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 8),
      padding: const EdgeInsetsDirectional.all(4),
      child: icon,
    );
  }
}

class TasksAreDoneEmptyState extends StatelessWidget {
  final double? height;
  const TasksAreDoneEmptyState({
    super.key,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          /* Positioned.fill( */
          /* ), */
          Align(
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0.2,
              child: ColorFiltered(
                colorFilter:
                    const ColorFilter.mode(Colors.grey, BlendMode.saturation),
                child: Image.asset('assets/done_checklist.png'),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                /* color: Colors.white, */
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "All tasks are done !",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: Colors.black54),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardSingleItem extends StatelessWidget {
  final String title;
  final String value;
  const CardSingleItem({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          /* height: 50, */
          alignment: AlignmentDirectional.centerStart,
          padding: EdgeInsets.all(8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Container(
              margin: const EdgeInsetsDirectional.symmetric(vertical: 8),
              child: Text(value),
            )
          ])),
    );
  }
}

class SegmentCard extends StatelessWidget {
  final List<CardSingleItem> itemCards;
  const SegmentCard({super.key, required this.itemCards});

  @override
  Widget build(BuildContext context) {
    List<Row> rows = [];
    for (int i = 0; i < itemCards.length; i = i + 2) {
      Row row = Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            itemCards[i],
            if ((i + 1) < itemCards.length) itemCards[i + 1],
          ]);
      rows.add(row);
    }
    return Container(
      /* height: 150, */
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: CupertinoColors.systemGrey4, width: 0)),
      child: Container(
        /* height: 150, */
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: rows),
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
        ]);
  }
}
