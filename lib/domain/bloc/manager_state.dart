part of 'manager_bloc.dart';

sealed class ManagerState extends Equatable {
  const ManagerState();

  @override
  List<Object> get props => [];
}

final class ManagerInitial extends ManagerState {}

final class ManagerLoaded extends ManagerState {
  final List<ObjectPlace> places;
  final List<ObjectPlace> booked;

  final List<ObjectPlace> placesRecomended;
  final List<ObjectPlace> placesNearby;
  final List<ObjectPlace> placesOther;

  final List<IconData> tagsSorted;

  const ManagerLoaded({
    required this.places,
    required this.booked,
    required this.placesNearby,
    required this.placesOther,
    required this.placesRecomended,
    required this.tagsSorted,
  });

  ManagerLoaded copyWith({
    List<ObjectPlace>? places,
    List<ObjectPlace>? booked,
    List<ObjectPlace>? placesRecomended,
    List<ObjectPlace>? placesNearby,
    List<ObjectPlace>? placesOther,
    List<IconData>? tagsSorted,
  }) {
    return ManagerLoaded(
      booked: booked ?? this.booked,
      places: places ?? this.places,
      placesRecomended: placesRecomended ?? this.placesRecomended,
      placesOther: placesOther ?? this.placesOther,
      placesNearby: placesNearby ?? this.placesNearby,
      tagsSorted: tagsSorted ?? this.tagsSorted
    );
  }

  @override
  List<Object> get props => [
    places,
    booked,
    placesNearby,
    placesOther,
    placesRecomended,
    tagsSorted,
  ];
}
