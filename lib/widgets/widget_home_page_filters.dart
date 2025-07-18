import 'package:bronika/global/global_colors.dart';
import 'package:bronika/global/global_design.dart';
import 'package:bronika/global/global_icons.dart';
import 'package:flutter/material.dart';

class WidgetHomePageFilters extends StatelessWidget {
  const WidgetHomePageFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5,
      child: ListView.separated(
        itemCount: GlobalIcons.filterList.length,
        padding: EdgeInsets.symmetric(horizontal: GlobalDesign.globalPadding),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                style: GlobalDesign.roundedButtonStyle,
                onPressed: () {},
                icon: Icon(
                  GlobalIcons.filterList[index],
                  color: GlobalColors.iconColor,
                  size: GlobalDesign.globalIconSize,
                ),
              ),
              Text(
                GlobalIcons.filterToStringList[GlobalIcons.filterList[index]] ??
                    "Error",
              ),
            ],
          );
        },
        separatorBuilder: (context, index) =>
            SizedBox(width: GlobalDesign.globalPadding),
      ),
    );
  }
}
