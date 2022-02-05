part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {}

class UserEventFetchNewData extends UserEvent {
  final String query;
  final int page;
  final int perPage;

  UserEventFetchNewData({
    required this.query,
    required this.page,
    this.perPage = 50,
  });

  @override
  List<Object?> get props => throw UnimplementedError();
}

class UserEventFetchData extends UserEvent {
  final String query;
  final int page;
  final int perPage;

  UserEventFetchData({
    required this.query,
    required this.page,
    this.perPage = 50,
  });

  @override
  List<Object?> get props => [query, page, perPage];
}
