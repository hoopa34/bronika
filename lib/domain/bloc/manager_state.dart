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

  const ManagerLoaded({required this.places, required this.booked});

  ManagerLoaded copyWith(List<ObjectPlace>? places, List<ObjectPlace>? booked) {
    return ManagerLoaded(
      booked: booked ?? this.booked,
      places: places ?? this.places,
    );
  }

  @override
  List<Object> get props => [places, booked];
}
