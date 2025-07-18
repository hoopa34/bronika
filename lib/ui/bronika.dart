import 'package:bronika/ui/homepage/home_page.dart';
import 'package:flutter/material.dart';

class Bronika extends StatelessWidget {
  const Bronika({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Bronika",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
