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
  final _userBloc = getIt<UserCubit>();

  final _refreshController = RefreshController();
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _refreshController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Github User Finder',
          style: TextStyle(
            fontSize: 28,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        bottom: PreferredSize(
          preferredSize:
              Size(MediaQuery.of(context).size.width, kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _searchController,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.search,
              decoration: const InputDecoration(
                hintText: 'Search User',
                prefixIcon: Icon(Icons.search),
              ),
              onEditingComplete: () async {
                FocusManager.instance.primaryFocus?.unfocus();
                if (_searchController.text.isNotEmpty) {
                  await _userBloc.fetchNewData(
                    query: _searchController.text,
                    page: _userBloc.currentPage,
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Query is empty')),
                  );
                }
              },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: BlocConsumer<UserCubit, UserState>(
          bloc: _userBloc,
          listener: _userListener,
          buildWhen: (a, b) => (b is UserStateFetchedData ||
              (b is UserStateLoading && _userBloc.userList.isEmpty) ||
              (b is UserStateError && _userBloc.userList.isEmpty)),
          builder: (context, state) {
            if (state is UserStateInital) {
              return Center(child: Text(state.data));
            } else if (state is UserStateError) {
              return Center(child: Text(state.errorMessage));
            } else if (state is UserStateLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is UserStateFetchedData) {
              if (state.users.isEmpty) {
                return const Center(child: Text('No User Found'));
              } else {
                return UserList(
                  users: _userBloc.userList,
                  refreshController: _refreshController,
                  onLoading: () async {
                    if (_searchController.text.isNotEmpty) {
                      await _userBloc.fetchData(
                        query: _searchController.text,
                        page: _userBloc.currentPage,
                      );

                      _refreshController.loadComplete();
                    }
                  },
                );
              }
            } else {
              return const Center(
                child: Icon(
                  Icons.inbox,
                  size: 100,
                ),
              );
            }
          },
        ),
      ),
    );
  }

  void _userListener(BuildContext context, UserState state) {
    debugPrint(state.toString());
    if (state is UserStateError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(state.errorMessage)));
    }
  }
}
