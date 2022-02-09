part of 'repository_cubit.dart';

@freezed
class RepositoryState with _$RepositoryState {
  const factory RepositoryState.initial() = Initial;
  const factory RepositoryState.loading() = Loading;
  const factory RepositoryState.fetchedData(
    List<RepositoryModel> repositories,
  ) = FetchedData;
  const factory RepositoryState.error(String errorMessage) = Error;
}
