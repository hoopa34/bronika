import 'package:bronika/global/global_design.dart';
import 'package:bronika/global/objects/object_place.dart';
import 'package:flutter/material.dart';

class WidgetPlaceImages extends StatelessWidget {
  const WidgetPlaceImages({super.key, required this.place});

  final ObjectPlace place;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        padding: EdgeInsets.only(
          left: GlobalDesign.globalPadding,
          right: GlobalDesign.globalPadding,
        ),
        child: Column(
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
      
            AspectRatio(
              aspectRatio: 2.75,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5 - 24,
                    height: MediaQuery.of(context).size.width * 0.5 - 40,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.all(
                        Radius.circular(GlobalDesign.globalRadius),
                      ),
                      child: Image.asset(place.images[1], fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: GlobalDesign.globalPadding),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5 - 24,
                    height: MediaQuery.of(context).size.width * 0.5 - 40,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.all(
                        Radius.circular(GlobalDesign.globalRadius),
                      ),
                      child: Image.asset(place.images[2], fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
