import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_finder/core/core.dart';
import 'package:github_user_finder/features/repository_list/cubit/repository_cubit.dart';
import 'package:github_user_finder/features/repository_list/widgets/repository_list.dart';
import 'package:github_user_finder/utils/utils.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RepositoryListPage extends StatefulWidget {
  static const String routeName = '/repositoryListPage';
  const RepositoryListPage({Key? key}) : super(key: key);

  @override
  _RepositoryListPageState createState() => _RepositoryListPageState();
}

class _RepositoryListPageState extends State<RepositoryListPage> {
  final _repositoryCubit = getIt<RepositoryCubit>();

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Search Repository',
              style: TextStyle(fontSize: 28),
            ),
            BlocBuilder<RepositoryCubit, RepositoryState>(
              bloc: _repositoryCubit,
              buildWhen: (a, b) => (b is FetchedData),
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => const SizedBox.shrink(),
                  fetchedData: (data) => Text(
                    _repositoryCubit.repositoryList.length.toString(),
                    style: const TextStyle(fontSize: 28),
                  ),
                );
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
              controller: _searchController,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.search,
              decoration: const InputDecoration(
                hintText: 'Search Repository',
                prefixIcon: Icon(Icons.search),
              ),
              onEditingComplete: () async {
                if (_searchController.text.isNotEmpty) {
                  FocusManager.instance.primaryFocus?.unfocus();
                  await _repositoryCubit.fetchNewData(
                    query: _searchController.text,
                    page: _repositoryCubit.currentPage,
                    perPage: 100,
                  );
                } else {
                  showAppSnackBar(context, 'Query is empty');
                }
              },
            ),
            const SizedBox.square(dimension: 8),
            Expanded(
              child: BlocConsumer<RepositoryCubit, RepositoryState>(
                bloc: _repositoryCubit,
                listener: _repositoryListener,
                buildWhen: (a, b) => (b is FetchedData ||
                    (b is Loading && _repositoryCubit.repositoryList.isEmpty) ||
                    (b is Error && _repositoryCubit.repositoryList.isEmpty)),
                builder: (context, state) => state.maybeMap(
                  orElse: () => const Center(
                    child: Icon(
                      Icons.search,
                      size: 100,
                    ),
                  ),
                  initial: (data) =>
                      const Center(child: Icon(Icons.search, size: 100)),
                  loading: (data) =>
                      const Center(child: CircularProgressIndicator()),
                  error: (data) => Center(child: Text(data.errorMessage)),
                  fetchedData: (data) => data.repositories.isEmpty
                      ? const Center(child: Text('No Repository Found'))
                      : RepositoryList(
                          repositories: _repositoryCubit.repositoryList,
                          refreshController: _refreshController,
                          onLoading: () async {
                            if (_searchController.text.isNotEmpty) {
                              await _repositoryCubit.fetchData(
                                query: _searchController.text,
                                page: _repositoryCubit.currentPage,
                                perPage: 100,
                              );

                              _refreshController.loadComplete();
                            }
                          },
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _repositoryListener(BuildContext context, RepositoryState state) {
    if (state is Error) {
      showAppSnackBar(context, state.errorMessage);
    }
  }
}
