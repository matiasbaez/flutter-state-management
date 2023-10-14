part of 'user_bloc.dart';

@immutable
sealed class UserState {
  final bool existsUser;
  final User? user;

  const UserState({
    this.existsUser = false,
    this.user
  });
}

final class UserInitialState extends UserState {
  const UserInitialState() : super( existsUser: false );
}

final class ActiveUserState extends UserState {
  final User newUser;

  const ActiveUserState(this.newUser) : super( existsUser: true, user: newUser );
}
