import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'opening_event.dart';
part 'opening_state.dart';

class OpeningBloc extends Bloc<OpeningEvent, OpeningState> {
  OpeningBloc() : super(OpeningInitial()) {
    on<LoginButtonClicked>((event, emit) {
      emit(OpeningInitial());
    });
  }
}
