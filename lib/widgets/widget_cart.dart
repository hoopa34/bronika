import 'package:bronika/global/global_colors.dart';
import 'package:bronika/global/global_design.dart';
import 'package:bronika/global/global_icons.dart';
import 'package:bronika/global/objects/object_place.dart';
import 'package:flutter/material.dart';

class WidgetCart extends StatelessWidget {
  final ObjectPlace place;
  const WidgetCart({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: GlobalDesign.cartDesign,
      padding: EdgeInsets.all(GlobalDesign.globalPadding),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.5,
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.all(
                Radius.circular(GlobalDesign.globalRadius),
              ),
              child: Image.asset(place.images[0], fit: BoxFit.cover),
            ),
          ),

          SizedBox(height: GlobalDesign.globalPadding),

          Container(
            decoration: GlobalDesign.highlightCartDesign,
            padding: EdgeInsets.all(GlobalDesign.globalSmallPadding),
            child: Text("RESTORAN"),
          ),

          Text(place.name, style: GlobalDesign.cardTitleStyle, maxLines: 1),

          Row(
            children: [
              Icon(GlobalIcons.rating, color: GlobalColors.buttonHilightColor),
              SizedBox(width: GlobalDesign.globalSmallPadding),
              Text(
                "${place.rating}",
                style: GlobalDesign.ratingStyle,
                maxLines: 1,
              ),
              SizedBox(width: GlobalDesign.globalSmallPadding),
              Text(
                "${place.ratingPoints}",
                style: GlobalDesign.geoStyle,
                maxLines: 1,
              ),
            ],
          ),
          Row(
            children: [
              Icon(GlobalIcons.location, color: GlobalColors.iconColor),
              SizedBox(width: GlobalDesign.globalSmallPadding),
              Text(place.address, style: GlobalDesign.geoStyle, maxLines: 1),
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
