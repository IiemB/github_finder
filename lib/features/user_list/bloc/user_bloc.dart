import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:github_user_finder/models/models.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserStateInital('Initial State')) {
    on<UserEvent>((event, emit) {});
  }
}
