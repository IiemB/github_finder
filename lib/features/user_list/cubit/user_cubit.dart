import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:github_user_finder/features/user_list/interfaces/user_list_interface.dart';
import 'package:github_user_finder/models/models.dart';
import 'package:injectable/injectable.dart';

part 'user_state.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  UserCubit(
    this._userListInterface,
  ) : super(UserStateInital('Initial State'));

  final UserListInterface _userListInterface;

  final userList = List<UserModel>.empty(growable: true);

  int currentPage = 1;

  final searchController = TextEditingController();

  Future<void> fetchNewData({
    required String query,
    required int page,
    int perPage = 50,
  }) async {
    userList.clear();
    currentPage = 1;
    emit(UserStateLoading());

    final result = await _userListInterface.getUsers(
      query: query,
      page: page,
      perPage: perPage,
    );

    result.fold(
      (l) => emit(UserStateError(l.data)),
      (r) {
        userList.addAll(r);
        emit(UserStateFetchedData(r));
      },
    );
  }

  Future<void> fetchData({
    required String query,
    required int page,
    int perPage = 50,
  }) async {
    emit(UserStateLoading());

    final result = await _userListInterface.getUsers(
      query: query,
      page: page,
      perPage: perPage,
    );

    result.fold(
      (l) => emit(UserStateError(l.data)),
      (r) {
        currentPage++;
        userList.addAll(r);
        emit(UserStateFetchedData(r));
      },
    );
  }
}
