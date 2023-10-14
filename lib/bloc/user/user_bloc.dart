import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:state_management/models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super( const UserInitialState() ) {

    // Update user state
    on<ActivateUserEvent>((event, emit) => emit(ActiveUserState(event.user)));

    on<UpdateUserAgeEvent>((event, emit) {
      if (!state.existsUser) return;

      final age = event.age;
      final user = state.user!.copyWith(age: age);

      emit(ActiveUserState(user));
    });

    on<UpdateUserProfessionEvent>((event, emit) {
      if (!state.existsUser) return;

      final professions = [
        ...state.user!.professions,
        event.profession
      ];

      final user = state.user!.copyWith(professions: professions);

      emit(ActiveUserState(user));
    });

    on<DeleteUserEvent>((event, emit) => emit(const UserInitialState()));

  }
}
