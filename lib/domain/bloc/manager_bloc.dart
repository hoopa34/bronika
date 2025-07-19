import 'package:bloc/bloc.dart';
import 'package:bronika/global/objects/object_place.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'manager_event.dart';
part 'manager_state.dart';

class ManagerBloc extends Bloc<ManagerEvent, ManagerState> {
  ManagerBloc() : super(ManagerInitial()) {
    on<ManagerLoadEvent>(_load);
    on<ManagerTagSortedAddEvent>(_add);
    on<ManagerTagSortedRemoveEvent>(_remove);
  }
  Future<void> _load(ManagerLoadEvent event, Emitter<ManagerState> emit) async {
    List<ObjectPlace> avialablePlaces = event.places;
    List<ObjectPlace> bookedPlaces = [];

    List<ObjectPlace> placesNearby = avialablePlaces;
    List<ObjectPlace> placesOther = avialablePlaces;
    List<ObjectPlace> placesRecomended = avialablePlaces;

    List<IconData> tagsSorted = [];

    placesNearby.shuffle();
    placesOther.shuffle();
    placesRecomended.shuffle();

    ManagerLoaded baseState = ManagerLoaded(
      places: avialablePlaces,
      booked: bookedPlaces,
      placesNearby: placesNearby,
      placesOther: placesOther,
      placesRecomended: placesRecomended,
      tagsSorted:  tagsSorted
    );

    emit(baseState);
  }

  Future _add (
    ManagerTagSortedAddEvent event,
    Emitter<ManagerState> emit
  ) async {
    if(this.state is! ManagerLoaded) return;

    final state = this.state as ManagerLoaded;

    final List<IconData> tagsSorted = state.tagsSorted;

    tagsSorted.add(event.tag);

    final newState = state.copyWith(tagsSorted :  tagsSorted);

    emit(newState);
  }

  Future _remove (
    ManagerTagSortedRemoveEvent event,
    Emitter<ManagerState> emit
  ) async {
    if(this.state is! ManagerLoaded) return;

    final state = this.state as ManagerLoaded;

    final List<IconData> tagsSorted = state.tagsSorted;

    tagsSorted.remove(event.tag);

    final newState = state.copyWith(tagsSorted :  tagsSorted);

    emit(newState);
  }
}
