import 'package:bloc/bloc.dart';

part 'points_event.dart';
part 'points_state.dart';

class PointsBloc extends Bloc<PointsEvent, PointsState> {
  PointsBloc() : super(PointsInitial()) {
    on<BackNavigation>((event, emit) {
      emit(NavigateToBack());
    });
  }
}
