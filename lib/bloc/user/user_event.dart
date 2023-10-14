part of 'user_bloc.dart';

@immutable
sealed class UserEvent {}

class ActivateUserEvent extends UserEvent {
  final User user;
  ActivateUserEvent(this.user);
}

class UpdateUserAgeEvent extends UserEvent {
  final int age;
  UpdateUserAgeEvent(this.age);
}

class UpdateUserProfessionEvent extends UserEvent {
  final String profession;
  UpdateUserProfessionEvent(this.profession);
}

class DeleteUserEvent extends UserEvent {}
