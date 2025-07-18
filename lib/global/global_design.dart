import 'package:bronika/global/global_colors.dart';
import 'package:flutter/material.dart';

abstract class GlobalDesign {
  static final double globalPadding = 16;
  static final double globalSmallPadding = 8;
  static final double globalRadius = 16;
  static final double globalIconSize = 40;

  static final BoxDecoration cartDesign = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(globalRadius)),
    color: GlobalColors.cartColor,
  );

  static final BoxDecoration innerCartDesign = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(globalRadius)),
    color: GlobalColors.backgroundColor,
  );

  static final BoxDecoration highlightCartDesign = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(globalRadius)),
    color: GlobalColors.buttonHilightColor,
  );

  static final ButtonStyle roundedButtonStyle = IconButton.styleFrom(
    backgroundColor: GlobalColors.cartColor,
    highlightColor: GlobalColors.buttonHilightColor,

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(globalRadius)),
    ),
  );

  static final ButtonStyle highlightButtonStyle = IconButton.styleFrom(
    backgroundColor: GlobalColors.buttonHilightColor,
    highlightColor: GlobalColors.cartColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(globalRadius)),
    ),
  );

  static final DatePickerThemeData datePickerThemeData = DatePickerThemeData(
    backgroundColor: GlobalColors.backgroundColor,
    rangePickerShape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.all(Radius.circular(globalRadius)),
    ),
  );

  static final TextStyle titleStyle = TextStyle(
    color: GlobalColors.titleColor,
    fontSize: 20,
  );
  static final TextStyle cardTitleStyle = TextStyle(
    color: GlobalColors.titleColor,
    fontSize: 18,
  );

  static final TextStyle descriptionStyle = TextStyle(
    color: GlobalColors.iconColor,
    fontSize: 16,
  );

  static final TextStyle geoStyle = TextStyle(
    color: GlobalColors.iconColor,
    fontSize: 10,
  );
  static final TextStyle ratingStyle = TextStyle(
    color: GlobalColors.buttonHilightColor,
    fontSize: 12,
  );

  static final TextStyle addDescription = TextStyle(
    color: GlobalColors.cartColor,
    fontSize: 20,
  );
  static final TextStyle addTitle = TextStyle(
    color: GlobalColors.cartColor,
    fontSize: 36,
  );
}
