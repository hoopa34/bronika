import 'package:bronika/global/global_colors.dart';
import 'package:bronika/global/global_design.dart';
import 'package:bronika/global/global_icons.dart';
import 'package:flutter/material.dart';

class WidgetHomePadeAd extends StatelessWidget {
  const WidgetHomePadeAd({super.key});

  @override
  Widget build(BuildContext context) {
    double localPadding = GlobalDesign.globalPadding;
    return Container(
      height: MediaQuery.of(context).size.width * 0.35,
      margin:  EdgeInsets.only(
        left: localPadding,
        right: localPadding,
        bottom: localPadding,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(GlobalDesign.globalPadding),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors:
              GlobalIcons.filterToColorGradientList[GlobalIcons.movies] ??
              const [
                GlobalColors.mainColor,
                GlobalColors.mainSecondColor,
                GlobalColors.mainThirdColor,
              ],
        ),
      ),

      child: TextButton(
        onPressed: () {},
        style: IconButton.styleFrom(
          highlightColor: GlobalColors.buttonHilightColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(GlobalDesign.globalRadius)),
          ),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(localPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Today's special offer", style: GlobalDesign.addDescription,),
                Text("20% OFF", style: GlobalDesign.addTitle,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
