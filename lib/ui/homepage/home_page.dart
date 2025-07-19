import 'package:bronika/domain/bloc/manager_bloc.dart';
import 'package:bronika/global/global_colors.dart';
import 'package:bronika/global/global_design.dart';
import 'package:bronika/widgets/widget_home_pade_ad.dart';
import 'package:bronika/widgets/widget_home_page_filters.dart';
import 'package:bronika/widgets/widget_home_page_search_bar.dart';
import 'package:bronika/widgets/widget_home_page_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManagerBloc, ManagerState>(
      builder: (context, state) {
        if (state is! ManagerLoaded) {
          return const Center(child: CircularProgressIndicator());
        }

        return Scaffold(
          backgroundColor: GlobalColors.backgroundColor,
          body: Stack(
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment.bottomRight,
              //       end: Alignment.topLeft,
              //       colors: [
              //         GlobalColors.mainThirdColor,
              //         GlobalColors.mainSecondColor,
              //         GlobalColors.mainColor,
              //       ],
              //     ),
              //   ),
              // ),
              CustomScrollView(
                slivers: [
                  const SliverAppBar(
                    toolbarHeight: 0,
                    backgroundColor: GlobalColors.backgroundColor,
                  ),

                  const SliverToBoxAdapter(child: WidgetHomePageSearchBar()),

                  const SliverToBoxAdapter(child: WidgetHomePadeAd()),

                  const SliverToBoxAdapter(child: WidgetHomePageFilters()),

                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(GlobalDesign.globalPadding),
                      child: Text(
                        "Recommended for You",
                        style: GlobalDesign.titleStyle,
                      ),
                    ),
                  ),

                  SliverToBoxAdapter(
                    child: WidgetHomePageSlider(places: state.placesRecomended),
                  ),

                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(GlobalDesign.globalPadding),
                      child: Text(
                        "Nearby Offers",
                        style: GlobalDesign.titleStyle,
                      ),
                    ),
                  ),

                  SliverToBoxAdapter(
                    child: WidgetHomePageSlider(places: state.placesNearby),
                  ),

                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(GlobalDesign.globalPadding),
                      child: Text(
                        "Other Places",
                        style: GlobalDesign.titleStyle,
                      ),
                    ),
                  ),

                  SliverToBoxAdapter(
                    child: WidgetHomePageSlider(places: state.placesOther),
                  ),

                  SliverToBoxAdapter(
                    child: SizedBox(height: GlobalDesign.globalPadding),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
