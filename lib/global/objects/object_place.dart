import 'package:flutter/widgets.dart';

class ObjectPlace {
  final String name;
  final List<String> images;
  final double rating;
  final double ratingPoints;
  final String address;
  final String description;
  final double price;
  final IconData tag;

  const ObjectPlace({
    required this.address,
    required this.description,
    required this.images,
    required this.name,
    required this.price,
    required this.rating,
    required this.ratingPoints,
    required this.tag,
  });
}
