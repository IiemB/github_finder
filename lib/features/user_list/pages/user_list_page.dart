import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_finder/features/user_list/cubit/user_cubit.dart';
import 'package:github_user_finder/features/user_list/widgets/user_list.dart';
import 'package:github_user_finder/utils/constants.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UserListPage extends StatefulWidget {
  static const String routeName = '/userListpage';

  const UserListPage({Key? key}) : super(key: key);

  @override
  _UserListPageState createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  final _refreshController = RefreshController();

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Search User',
              style: TextStyle(fontSize: 28),
            ),
            BlocBuilder<UserCubit, UserState>(
              // bloc: getIt<UserCubit>(),
              buildWhen: (a, b) => (b is UserStateFetchedData),
              builder: (context, state) {
                if (state is UserStateFetchedData) {
                  return Text(
                    BlocProvider.of<UserCubit>(context)
                        .userList
                        .length
                        .toString(),
                    style: const TextStyle(fontSize: 28),
                  );
                }
                return const SizedBox.shrink();
              },
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextFormField(
              controller: BlocProvider.of<UserCubit>(context).searchController,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.search,
              decoration: const InputDecoration(
                hintText: 'Search User',
                prefixIcon: Icon(Icons.search),
              ),
              onEditingComplete: () async {
                if (BlocProvider.of<UserCubit>(context)
                    .searchController
                    .text
                    .isNotEmpty) {
                  FocusManager.instance.primaryFocus?.unfocus();
                  await BlocProvider.of<UserCubit>(context).fetchNewData(
                    query: BlocProvider.of<UserCubit>(context)
                        .searchController
                        .text,
                    page: BlocProvider.of<UserCubit>(context).currentPage,
                  );
                } else {
                  showAppSnackBar(context, 'Query is empty');
                }
              },
            ),
            const SizedBox.square(dimension: 8),
            Expanded(
              child: BlocConsumer<UserCubit, UserState>(
                // bloc: _userCubit,
                listener: _userListener,
                buildWhen: (a, b) => (b is UserStateFetchedData ||
                    (b is UserStateLoading &&
                        BlocProvider.of<UserCubit>(context).userList.isEmpty) ||
                    (b is UserStateError &&
                        BlocProvider.of<UserCubit>(context).userList.isEmpty)),
                builder: (context, state) {
                  if (state is UserStateInital) {
                    return const Center(child: Icon(Icons.search, size: 100));
                  } else if (state is UserStateError) {
                    return Center(child: Text(state.errorMessage));
                  } else if (state is UserStateLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is UserStateFetchedData) {
                    if (state.users.isEmpty) {
                      return const Center(child: Text('No User Found'));
                    } else {
                      return UserList(
                        users: BlocProvider.of<UserCubit>(context).userList,
                        refreshController: _refreshController,
                        onLoading: () async {
                          if (BlocProvider.of<UserCubit>(context)
                              .searchController
                              .text
                              .isNotEmpty) {
                            await BlocProvider.of<UserCubit>(context).fetchData(
                              query: BlocProvider.of<UserCubit>(context)
                                  .searchController
                                  .text,
                              page: BlocProvider.of<UserCubit>(context)
                                  .currentPage,
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
          ],
        ),
      ),
    );
  }

  void _userListener(BuildContext context, UserState state) {
    if (state is UserStateError) {
      showAppSnackBar(context, state.errorMessage);
    }
  }
}
