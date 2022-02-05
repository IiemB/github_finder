part of 'user_bloc.dart';

abstract class UserState extends Equatable {}

class UserStateInital extends UserState {
  final String data;

  UserStateInital(this.data);

  @override
  List<Object?> get props => [data];
}

class UserStateLoading extends UserState {
  @override
  List<Object?> get props => [];
}

class UserStateFetchedData extends UserState {
  final List<UserModel> users;

  UserStateFetchedData(this.users);

  @override
  List<Object?> get props => [users];
}

class UserStateError extends UserState {
  final String errorMessage;

  UserStateError(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}
