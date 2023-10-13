
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'package:state_management/models/models.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {

  // Set initial state
  UserCubit() : super( UserInitial() );

  void selectUser(User user) {
    emit(ActiveUser(user));
  }

  void changeAge(int age) {
    final currentState = state;
    if (currentState is ActiveUser) {
      final user = currentState.user.copyWith( age: age );
      emit(ActiveUser(user));
    }
  }

  void addProfession(String profession) {
    final currentState = state;
    if (currentState is ActiveUser) {
      final professions = [...currentState.user.professions, profession];
      final user = currentState.user.copyWith( professions: professions );
      emit(ActiveUser(user));
    }
  }

  void cleanUser() {
    emit(UserInitial());
  }

}
