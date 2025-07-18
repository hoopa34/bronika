import 'package:bronika/global/global_design.dart';
import 'package:bronika/global/objects/object_place.dart';
import 'package:bronika/widgets/widget_cart.dart';
import 'package:flutter/material.dart';

class WidgetHomePageSlider extends StatelessWidget {
  final List<ObjectPlace> places;
  const WidgetHomePageSlider({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    places.shuffle();
    
    return AspectRatio(
      aspectRatio: 1,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: GlobalDesign.globalPadding),
        itemBuilder: (context, index) => AspectRatio(
          aspectRatio: .75,
          child: WidgetCart(place: places[index]),
        ),
        separatorBuilder: (context, index) =>
            SizedBox(width: GlobalDesign.globalPadding),
        itemCount: places.length,
      ),
    );
  }
}
