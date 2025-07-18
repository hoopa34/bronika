import 'package:bronika/global/global_icons.dart';
import 'package:bronika/global/global_images.dart';
import 'package:bronika/global/objects/object_place.dart';

abstract class SavesListPlaces {
  static final List<ObjectPlace> places = [
    SavesPlaces.alisherNavoiOpera,
    SavesPlaces.beshQozonPlovCenter,
    SavesPlaces.cityParkFitness,
    SavesPlaces.cinemaplex,
    SavesPlaces.cinematica,
    SavesPlaces.egarCarRental,
    SavesPlaces.hertzUzbekistan,
    SavesPlaces.ilkhomIndependentTheatre,
    SavesPlaces.milliyTaomlarRestaurant,
    SavesPlaces.planetarium,
  ];
}

abstract class SavesPlaces {
  static final ObjectPlace beshQozonPlovCenter = ObjectPlace(
    name: 'Besh Qozon Plov Center',
    images: [GlobalImages.one_1, GlobalImages.one_2, GlobalImages.one_3],
    rating: 4.5,
    ratingPoints: 3500,
    address: 'Guards Colonel Khodjaev St 1, Tashkent',
    description:
        'Famous for its authentic Uzbek plov cooked in giant kazan pots. Open kitchen lets diners watch the process.',
    price: 12.0,
    tag: GlobalIcons.restaurants,
  );

  static final ObjectPlace milliyTaomlarRestaurant = ObjectPlace(
    name: 'Milliy Taomlar Restaurant',
    images: [GlobalImages.ten_1, GlobalImages.ten_2, GlobalImages.ten_3],
    rating: 4.3,
    ratingPoints: 900,
    address: 'Central Tashkent',
    description:
        'Traditional Uzbek cuisine including kebabs, manti, dumplings, soups and salads.',
    price: 10.0,
    tag: GlobalIcons.restaurants,
  );

  static final ObjectPlace cinematica = ObjectPlace(
    name: 'Cinematica (Tashkent City Mall)',
    images: [GlobalImages.two_1, GlobalImages.two_2, GlobalImages.two_3],
    rating: 4.4,
    ratingPoints: 600,
    address: 'Tashkent City Mall, 4th floor',
    description:
        'Modern multiplex cinema (IMAX & 2D), shows movies in English regularly.',
    price: 6.0,
    tag: GlobalIcons.movies,
  );

  static final cinemaplex = ObjectPlace(
    name: 'Cinemaplex (Chigatay Mall)',
    images: [GlobalImages.three_1, GlobalImages.three_2, GlobalImages.three_3],
    rating: 4.2,
    ratingPoints: 500,
    address: 'Nurafshon Bypass St 7A, Almazar district',
    description:
        'Four screening halls with Dolby Digital, recliner seats, snack bar.',
    price: 5.0,
    tag: GlobalIcons.movies,
  );

  static final planetarium = ObjectPlace(
    name: 'Tashkent City Park – 7D & Planetarium',
    images: [GlobalImages.four_1, GlobalImages.four_2, GlobalImages.four_3],
    rating: 4.5,
    ratingPoints: 300,
    address: 'Tashkent City Park, Tashkent',
    description:
        'Family entertainment complex with 7D cinema, planetarium, interactive exhibits.',
    price: 8.0,
    tag: GlobalIcons.sports,
  );

  static final cityParkFitness = ObjectPlace(
    name: 'City Park Fitness',
    images: [GlobalImages.five_1, GlobalImages.five_2, GlobalImages.five_3],
    rating: 4.4,
    ratingPoints: 420,
    address: 'Tashkent City Park, Tashkent',
    description:
        'Modern fitness club with gym equipment, group classes, personal trainers.',
    price: 20.0,
    tag: GlobalIcons.sports,
  );

  static final alisherNavoiOpera = ObjectPlace(
    name: 'Alisher Navoi Opera & Ballet Theatre',
    images: [GlobalImages.six_1, GlobalImages.six_2, GlobalImages.six_3],
    rating: 4.8,
    ratingPoints: 1500,
    address: 'Bunyodkor St, Tashkent',
    description:
        'Uzbek national opera and ballet theatre, elegant Soviet-era building.',
    price: 15.0,
    tag: GlobalIcons.theaters,
  );

  static final ilkhomIndependentTheatre = ObjectPlace(
    name: 'Ilkhom Independent Theatre',
    images: [GlobalImages.seven_1, GlobalImages.seven_2, GlobalImages.seven_3],
    rating: 4.7,
    ratingPoints: 600,
    address: 'Central Tashkent',
    description:
        'Uzbekistan’s first independent theatre, known for avant‑garde performances.',
    price: 12.0,
    tag: GlobalIcons.theaters,
  );

  static final hertzUzbekistan = ObjectPlace(
    name: 'Hertz Uzbekistan',
    images: [GlobalImages.eight_1, GlobalImages.eight_2, GlobalImages.eight_3],
    rating: 4.6,
    ratingPoints: 200,
    address: 'Tashkent International Airport & Downtown',
    description:
        'International car rental agency offering wide fleet, including electric cars.',
    price: 50.0,
    tag: GlobalIcons.carRental,
  );

  static final egarCarRental = ObjectPlace(
    name: 'EGAR.uz Car Rental',
    images: [GlobalImages.nine_1, GlobalImages.nine_2, GlobalImages.nine_3],
    rating: 4.5,
    ratingPoints: 150,
    address: 'Mirobod District, Tashkent',
    description:
        'Local rental with fast paperwork, range from economy to premium vehicles.',
    price: 45.0,
    tag: GlobalIcons.carRental,
  );
}

