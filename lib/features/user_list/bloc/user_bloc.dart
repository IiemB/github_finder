import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:github_user_finder/features/user_list/interfaces/user_list_interface.dart';
import 'package:github_user_finder/models/models.dart';
import 'package:injectable/injectable.dart';

part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final UserListInterface _userListInterface;

  final userList = List<UserModel>.empty(growable: true);

  UserBloc(
    this._userListInterface,
  ) : super(UserStateInital('Initial State')) {
    on<UserEventFetchData>((event, emit) async {
      emit(UserStateLoading());

      final result = await _userListInterface.getUsers(
        query: event.query,
        page: event.page,
        perPage: event.perPage,
      );

      result.fold(
        (l) => emit(UserStateError(l.data)),
        (r) {
          userList.addAll(r);
          emit(UserStateFetchedData(r));
        },
      );
    });
  }
}
