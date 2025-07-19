import 'package:bronika/global/global_colors.dart';
import 'package:bronika/global/global_design.dart';
import 'package:bronika/global/global_icons.dart';
import 'package:bronika/global/objects/object_place.dart';
import 'package:bronika/ui/homepage/place_page.dart';
import 'package:flutter/material.dart';

class WidgetTagPageItem extends StatelessWidget {
  final ObjectPlace place;
  const WidgetTagPageItem({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PlacePage(place: place)),
        );
      },
      style: GlobalDesign.roundedButtonStyle,
      child: SizedBox(
        height: MediaQuery.of(context).size.width * .25,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.all(
                Radius.circular(GlobalDesign.globalPadding),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .25,
                height: MediaQuery.of(context).size.width * .25,
                child: Image.asset(place.images[0], fit: BoxFit.cover),
              ),
            ),

            SizedBox(width: GlobalDesign.globalPadding),

            SizedBox(
              width: MediaQuery.of(context).size.width * .45,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(place.name, maxLines: 1, style: GlobalDesign.titleStyle),
                  Text(
                    place.address,
                    maxLines: 1,
                    style: GlobalDesign.geoStyle,
                  ),

                  const Spacer(),

                  Row(
                    children: [
                      Text(
                        place.rating.toString(),
                        maxLines: 1,
                        style: GlobalDesign.ratingStyle,
                      ),

                      SizedBox(width: GlobalDesign.globalPadding),

                      Text(
                        place.ratingPoints.toString(),
                        maxLines: 1,
                        style: GlobalDesign.geoStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Spacer(),

            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(GlobalIcons.like, color: GlobalColors.iconColor),
                  style: GlobalDesign.roundedButtonStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
