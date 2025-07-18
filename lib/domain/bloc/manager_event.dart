part of 'manager_bloc.dart';

sealed class ManagerEvent extends Equatable {
  const ManagerEvent();

  @override
  List<Object> get props => [];
}

class ManagerLoadEvent extends ManagerEvent {
  final List<ObjectPlace> places;
  const ManagerLoadEvent({required this.places});
}
