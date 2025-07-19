import 'package:bronika/global/global_colors.dart';
import 'package:bronika/global/global_design.dart';
import 'package:bronika/global/global_icons.dart';
import 'package:flutter/material.dart';

class WidgetPlacePageDatePicker extends StatefulWidget {
  const WidgetPlacePageDatePicker({super.key});

  @override
  State<WidgetPlacePageDatePicker> createState() =>
      _WidgetPlacePageDatePickerState();
}

class _WidgetPlacePageDatePickerState extends State<WidgetPlacePageDatePicker> {
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(GlobalDesign.globalPadding),
      margin: EdgeInsets.all(GlobalDesign.globalPadding),
      decoration: GlobalDesign.cartDesign,
      child: TextField(
        controller: dateController,
        maxLines: 1,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(GlobalIcons.datePicker),
          prefixIconColor: GlobalColors.iconColor,
        ),
        readOnly: true,

        onTap: () {
          _selectDate(context);
        },
      ),
    );
  }

  Future<void> _selectDate(context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      setState(() {
        dateController.text = picked.toString().split(" ")[0];
      });
    }
  }
}
