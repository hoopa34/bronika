import 'package:flutter/material.dart';

abstract class GlobalIcons {
  static final IconData search = Icons.search;
  static final IconData searchSettings = Icons.manage_search;

  static final IconData rating = Icons.star_rounded;
  static final IconData location = Icons.location_on;

  static final IconData restaurants = Icons.restaurant_menu;
  static final IconData movies = Icons.movie_filter_rounded;
  static final IconData gaming = Icons.sports_esports;
  static final IconData sports = Icons.sports_basketball;
  static final IconData theaters = Icons.theater_comedy;
  static final IconData carRental = Icons.car_rental;

  static final List<IconData> filterList = [
    restaurants,
    movies,
    gaming,
    sports,
    theaters,
    carRental,
  ];

  static final Map<IconData, String> filterToStringList = {
    restaurants : "Restaurants",
    movies : "Movies",
    gaming : "Gaming",
    sports : "Sports",
    theaters : "Theaters",
    carRental : "Car Rental",
  };
}