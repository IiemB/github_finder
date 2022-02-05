import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_finder/core/core.dart';
import 'package:github_user_finder/features/user_list/bloc/user_bloc.dart';
import 'package:github_user_finder/features/user_list/widgets/user_list.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  _UserListPageState createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  final _userBloc = getIt<UserBloc>();

  final refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Github User Finder'),
      ),
      body: BlocConsumer<UserBloc, UserState>(
        bloc: _userBloc,
        listener: _userListener,
        builder: (context, state) {
          if (state is UserStateInital) {
            return Center(child: Text(state.data));
          } else if (state is UserStateLoading && _userBloc.userList.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is UserStateFetchedData) {
            if (state.users.isEmpty) {
              return const Center(child: Text('No User Found'));
            } else {
              return UserList(
                users: state.users,
                refreshController: refreshController,
                onLoading: () =>
                    _userBloc.add(UserEventFetchData(query: 'query', page: 1)),
              );
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  void _userListener(BuildContext context, UserState state) {
    if (state is UserStateError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(state.errorMessage)));
    }
  }
}
