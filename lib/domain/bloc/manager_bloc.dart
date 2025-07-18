import 'package:bloc/bloc.dart';
import 'package:bronika/global/objects/object_place.dart';
import 'package:equatable/equatable.dart';

part 'manager_event.dart';
part 'manager_state.dart';

class ManagerBloc extends Bloc<ManagerEvent, ManagerState> {
  ManagerBloc() : super(ManagerInitial()) {
    on<ManagerLoadEvent>(_load);
  }
  Future<void> _load(ManagerLoadEvent event, Emitter<ManagerState> emit) async {
    List<ObjectPlace> avialablePlaces = event.places;
    List<ObjectPlace> bookedPlaces = [];

    ManagerLoaded baseState = ManagerLoaded(
      places: avialablePlaces,
      booked: bookedPlaces,
    );

    emit(baseState);
  }
}
