import 'package:bronika/global/global_design.dart';
import 'package:bronika/widgets/widget_cart.dart';
import 'package:flutter/material.dart';

class WidgetHomePageSlider extends StatelessWidget {
  const WidgetHomePageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: GlobalDesign.globalPadding),
        itemBuilder: (context, index) => AspectRatio(aspectRatio: .75, child: WidgetCart()),
        separatorBuilder: (context, index) =>
            SizedBox(width: GlobalDesign.globalPadding),
        itemCount: 10,
      ),
    );
  }
}