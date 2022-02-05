part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {}

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
