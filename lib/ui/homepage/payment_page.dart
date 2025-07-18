import 'package:bronika/global/global_colors.dart';
import 'package:bronika/global/global_design.dart';
import 'package:bronika/global/objects/object_place.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  final ObjectPlace place;
  const PaymentPage({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.backgroundColor,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: GlobalColors.backgroundColor,
            title: Text("Payment"),
            centerTitle: true,
          ),

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(GlobalDesign.globalPadding),
              padding: EdgeInsets.all(GlobalDesign.globalPadding),
              decoration: GlobalDesign.cartDesign,
              child: Text(
                place.name,
                style: GlobalDesign.titleStyle,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(GlobalDesign.globalPadding),
              padding: EdgeInsets.all(GlobalDesign.globalPadding),
              decoration: GlobalDesign.cartDesign,
              child: Text(
                place.description,
                style: GlobalDesign.titleStyle,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(GlobalDesign.globalPadding),
              padding: EdgeInsets.all(GlobalDesign.globalPadding),
              decoration: GlobalDesign.cartDesign,
              child: Text(
                "Price: ${place.price.toString()}",
                style: GlobalDesign.titleStyle,
              ),
            ),
          ),
          
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(GlobalDesign.globalPadding),
              padding: EdgeInsets.all(GlobalDesign.globalPadding),
              decoration: GlobalDesign.cartDesign,
              child: Text(
                "Choose payment operator",
                style: GlobalDesign.titleStyle,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  style: GlobalDesign.highlightButtonStyle,
                  child: Text("Uzum", style: GlobalDesign.titleStyle),
                ),
                TextButton(
                  onPressed: () {},
                  style: GlobalDesign.highlightButtonStyle,
                  child: Text("Visa", style: GlobalDesign.titleStyle),
                ),
                TextButton(
                  onPressed: () {},
                  style: GlobalDesign.highlightButtonStyle,
                  child: Text("Click", style: GlobalDesign.titleStyle),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
