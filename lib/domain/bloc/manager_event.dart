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

class ManagerTagSortedAddEvent extends ManagerEvent{
  final IconData tag;
  const ManagerTagSortedAddEvent({required this.tag});
}

class ManagerTagSortedRemoveEvent extends ManagerEvent{
  final IconData tag;
  const ManagerTagSortedRemoveEvent({required this.tag});
}