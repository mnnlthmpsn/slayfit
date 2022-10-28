import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stayfit/events/name.events.dart';
import 'package:stayfit/states/name.states.dart';

class NameBloc extends Bloc<GlobalNameEvents, NameState> {
  NameBloc() : super(NameState()) {
    on<SetGlobalName>((event, emit) {
      emit(state.copyWith(name: event.name));
    });
  }
}
