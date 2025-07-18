import 'package:bronika/domain/bloc/manager_bloc.dart';
import 'package:bronika/global/saves/saves.dart';
import 'package:bronika/ui/homepage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bronika extends StatelessWidget {
  const Bronika({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ManagerBloc()..add(ManagerLoadEvent(places: SavesListPlaces.places)),
      child: const MaterialApp(
        title: "Bronika",
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
