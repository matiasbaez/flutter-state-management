
part of 'user_cubit.dart';

@immutable
sealed class UserState {

}

// Initial data for the state (something like redux initial state)
class UserInitial extends UserState {

  final existsuser = false;

}

class ActiveUser extends UserState {
  final existsuser = true;

  final User user;

  ActiveUser(this.user);
}
