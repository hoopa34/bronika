import 'package:bronika/domain/bloc/manager_bloc.dart';
import 'package:bronika/global/global_colors.dart';
import 'package:bronika/global/global_design.dart';
import 'package:bronika/global/global_icons.dart';
import 'package:bronika/global/objects/object_place.dart';
import 'package:bronika/widgets/widget_tag_page_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TagPage extends StatelessWidget {
  final IconData tag;
  const TagPage({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManagerBloc, ManagerState>(
      builder: (context, state) {
        if (state is! ManagerLoaded) {
          return const Center(child: CircularProgressIndicator());
        }

        List<ObjectPlace> placesFiltered = [];

        for (ObjectPlace element in state.places) {
          if(element.tag == tag){
            placesFiltered.add(element);
          }
        }

        return Scaffold(
          backgroundColor: GlobalColors.backgroundColor,
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: GlobalColors.backgroundColor,
                title: Text(GlobalIcons.filterToStringList[tag] ?? "ERROR"),
              ),

              SliverList.separated(
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: GlobalDesign.globalPadding),
                  child: WidgetTagPageItem(place: placesFiltered[index]),
                ),
                separatorBuilder: (context, index) =>
                    SizedBox(height: GlobalDesign.globalPadding),

                itemCount: placesFiltered.length,
              ),
            ],
          ),
        );
      },
    );
  }
}
