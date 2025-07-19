import 'package:bronika/global/global_colors.dart';
import 'package:bronika/global/global_design.dart';
import 'package:bronika/global/global_icons.dart';
import 'package:bronika/ui/homepage/tag_page.dart';
import 'package:flutter/material.dart';

class WidgetHomePageFilters extends StatelessWidget {
  const WidgetHomePageFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5,
      child: ListView.separated(
        itemCount: GlobalIcons.filterList.length,
        padding: EdgeInsets.symmetric(
          horizontal: GlobalDesign.globalPadding,
        ),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                style: GlobalDesign.roundedButtonStyle,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          TagPage(tag: GlobalIcons.filterList[index]),
                    ),
                  );
    
                  // if (state.tagsSorted.contains(
                  //   GlobalIcons.filterList[index],
                  // )) {
                  //   bloc.add(
                  //     ManagerTagSortedRemoveEvent(
                  //       tag: GlobalIcons.filterList[index],
                  //     ),
                  //   );
                  // } else {
                  //   bloc.add(
                  //     ManagerTagSortedAddEvent(
                  //       tag: GlobalIcons.filterList[index],
                  //     ),
                  //   );
                  // }
                },
                icon: Icon(
                  GlobalIcons.filterList[index],
                  color: GlobalColors.iconColor,
                  size: GlobalDesign.globalIconSize,
                ),
              ),
              Text(
                GlobalIcons.filterToStringList[GlobalIcons
                        .filterList[index]] ??
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
