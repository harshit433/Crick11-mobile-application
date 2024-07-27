import 'package:bloc/bloc.dart';

part 'contest_details_event.dart';
part 'contest_details_state.dart';

class ContestDetailsBloc
    extends Bloc<ContestDetailsEvent, ContestDetailsState> {
  ContestDetailsBloc() : super(ContestDetailsInitial()) {
    on<BackNavigaton>(
      (event, emit) {
        emit(NavigateToBack());
      },
    );
    on<JoinNow>(
      (event, emit) {
        emit(JoinandCreateTeam());
      },
    );
  }
}
