import 'package:bronika/global/global_design.dart';
import 'package:flutter/material.dart';

class WidgetPlacePageNumberPicker extends StatefulWidget {
  const WidgetPlacePageNumberPicker({super.key});

  @override
  State<WidgetPlacePageNumberPicker> createState() =>
      _WidgetPlacePageNumberPickerState();
}

class _WidgetPlacePageNumberPickerState
    extends State<WidgetPlacePageNumberPicker> {
  int active = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.25,
      child: ListView.separated(
        padding: EdgeInsets.all(GlobalDesign.globalPadding),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => TextButton(
          onPressed: () {
            if (active == index) {
              active = -1;
            } else {
              active = index;
            }

            setState(() {});
          },
          style: active == index
              ? GlobalDesign.highlightButtonStyle
              : GlobalDesign.roundedButtonStyle,
          child: Text("${index + 1}", style: GlobalDesign.titleStyle),
        ),
        separatorBuilder: (context, index) =>
            SizedBox(width: GlobalDesign.globalPadding),
        itemCount: 10,
      ),
    );
  }
}
