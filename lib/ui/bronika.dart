import 'package:bronika/domain/bloc/manager_bloc.dart';
import 'package:bronika/global/global_colors.dart';
import 'package:bronika/global/global_design.dart';
import 'package:bronika/global/saves/saves.dart';
import 'package:bronika/ui/homepage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bronika extends StatelessWidget {
  const Bronika({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ManagerBloc()..add(ManagerLoadEvent(places: SavesListPlaces.places)),
      child: MaterialApp(
        title: "Bronika",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          datePickerTheme: GlobalDesign.datePickerThemeData,
          colorScheme: ColorScheme.fromSeed(
            seedColor: GlobalColors.backgroundColor,
            primary: GlobalColors.buttonHilightColor,
            surfaceContainer: GlobalColors.backgroundColor 
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}
