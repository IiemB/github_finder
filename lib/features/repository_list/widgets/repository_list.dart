import 'package:flutter/material.dart';
import 'package:github_user_finder/models/models.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'repository_card.dart';

class RepositoryList extends StatelessWidget {
  final List<RepositoryModel> repositories;
  final RefreshController refreshController;
  final void Function()? onLoading;

  const RepositoryList({
    Key? key,
    required this.repositories,
    required this.refreshController,
    required this.onLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: false,
      enablePullUp: true,
      header: const WaterDropHeader(),
      footer: CustomFooter(
        loadStyle: LoadStyle.ShowAlways,
        builder: (context, mode) {
          late Widget body;

          if (mode == LoadStatus.loading) {
            body = const CircularProgressIndicator();
          } else if (mode == LoadStatus.failed) {
            body = const Text('Load Failed!');
          } else if (mode == LoadStatus.canLoading) {
            body = const CircularProgressIndicator();
          } else {
            body = const Text('Pull up to load more');
          }
          return SizedBox(
            height: MediaQuery.of(context).size.height / 15,
            child: Center(child: body),
          );
        },
      ),
      controller: refreshController,
      onLoading: onLoading,
      child: ListView.builder(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const BouncingScrollPhysics(),
        itemCount: repositories.length,
        itemBuilder: (context, index) => RepositoryCard(
          repositoryModel: repositories[index],
        ),
      ),
    );
  }
}
