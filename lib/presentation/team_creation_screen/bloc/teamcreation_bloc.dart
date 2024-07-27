import 'package:bloc/bloc.dart';

part 'teamcreation_event.dart';
part 'teamcreation_state.dart';

class TeamcreationBloc extends Bloc<TeamcreationEvent, TeamcreationState> {
  TeamcreationBloc() : super(TeamcreationInitial()) {
    on<BackNavigation>(
      (event, emit) {
        emit(NavigateToBack());
      },
    );

    on<Continue>(
      (event, emit) {
        emit(ContinuetoNextStep());
      },
    );
    on<Preview>(
      (event, emit) {
        emit(PreviewTeam());
      },
    );
    on<Edit>(
      (event, emit) {
        emit(EditTeam());
      },
    );
    on<Create>(
      (event, emit) {
        emit(CreateTeam());
      },
    );
    on<ChangePlayerCategory>(
      (event, emit) {
        emit(PlayerCategoryChanged(new_category: event.player_category));
      },
    );
  }
}
