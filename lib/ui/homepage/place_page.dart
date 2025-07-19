import 'package:bronika/global/global_colors.dart';
import 'package:bronika/global/global_design.dart';
import 'package:bronika/global/objects/object_place.dart';
import 'package:bronika/ui/homepage/payment_page.dart';
import 'package:bronika/widgets/widget_place_images.dart';
import 'package:bronika/widgets/widget_place_page_date_picker.dart';
import 'package:bronika/widgets/widget_place_page_number_picker.dart';
import 'package:flutter/material.dart';

class PlacePage extends StatelessWidget {
  final ObjectPlace place;
  const PlacePage({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.backgroundColor,
      floatingActionButton: SizedBox(
        width:
            MediaQuery.of(context).size.width - GlobalDesign.globalPadding * 2,
        child: TextButton(
          style: GlobalDesign.highlightButtonStyle,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PaymentPage(place: place),
              ),
            );
          },
          child: Text("RESERVE", style: GlobalDesign.titleStyle),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: GlobalColors.backgroundColor,
            title: Text(place.name),
            centerTitle: true,
          ),

          SliverToBoxAdapter(child: WidgetPlaceImages(place: place)),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(GlobalDesign.globalPadding),
              child: Text("DESCRIPTION", style: GlobalDesign.titleStyle),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: GlobalDesign.globalPadding,
              ),
              child: Text(
                place.description,
                style: GlobalDesign.descriptionStyle,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: SizedBox(height: GlobalDesign.globalPadding),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: GlobalDesign.globalPadding,
              ),
              child: Text("Choose date", style: GlobalDesign.titleStyle),
            ),
          ),

          const SliverToBoxAdapter(child: WidgetPlacePageDatePicker()),

          SliverToBoxAdapter(
            child: SizedBox(height: GlobalDesign.globalPadding),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: GlobalDesign.globalPadding,
              ),
              child: Text("Choose number", style: GlobalDesign.titleStyle),
            ),
          ),

          const SliverToBoxAdapter(
            child: WidgetPlacePageNumberPicker(),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 80)),
        ],
      ),
    );
  }
}

