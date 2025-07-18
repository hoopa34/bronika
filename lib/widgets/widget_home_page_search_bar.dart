import 'package:bronika/global/global_colors.dart';
import 'package:bronika/global/global_design.dart';
import 'package:bronika/global/global_icons.dart';
import 'package:flutter/material.dart';

class WidgetHomePageSearchBar extends StatelessWidget {
  const WidgetHomePageSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(GlobalDesign.globalPadding),
      height: 80,
      decoration: GlobalDesign.cartDesign,
      child: Container(
        margin: EdgeInsets.all(GlobalDesign.globalPadding),
        decoration: GlobalDesign.innerCartDesign,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: null,
              icon: Icon(
                GlobalIcons.search,
                color: GlobalColors.iconColor,
              ),
            ),
    
            Expanded(
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
    
            IconButton(
              onPressed: null,
              icon: Icon(
                GlobalIcons.searchSettings,
                color: GlobalColors.iconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
