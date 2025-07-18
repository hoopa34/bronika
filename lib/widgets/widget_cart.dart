import 'package:bronika/global/global_colors.dart';
import 'package:bronika/global/global_design.dart';
import 'package:bronika/global/global_icons.dart';
import 'package:flutter/material.dart';

class WidgetCart extends StatelessWidget {
  const WidgetCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: GlobalDesign.cartDesign,
      padding: EdgeInsets.all(GlobalDesign.globalPadding),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(),
          Container(
            decoration: GlobalDesign.highlightCartDesign,
            padding: EdgeInsets.all(GlobalDesign.globalSmallPadding),
            child: Text("RESTORAN"),
          ),
          Text("Mediterranean Restaurant", style: GlobalDesign.cardTitleStyle),
          Row(
            children: [
              Icon(GlobalIcons.rating, color: GlobalColors.buttonHilightColor),
              SizedBox(width: GlobalDesign.globalSmallPadding),
              Text("4.5", style: GlobalDesign.ratingStyle),
              SizedBox(width: GlobalDesign.globalSmallPadding),
              Text("(120)", style: GlobalDesign.geoStyle),
            ],
          ),
          Row(
            children: [
              Icon(GlobalIcons.location, color: GlobalColors.iconColor),
              SizedBox(width: GlobalDesign.globalSmallPadding),
              Text("123 Main St, Tashkent", style: GlobalDesign.geoStyle),
            ],
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: GlobalDesign.highlightButtonStyle,
            child: Text("REZERV", style: GlobalDesign.cardTitleStyle),
          ),
        ],
      ),
    );
  }
}
