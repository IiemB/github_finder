import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_user_finder/models/repository_model/repository_model.dart';
import 'package:injectable/injectable.dart';

part 'repository_state.dart';
part 'repository_cubit.freezed.dart';

@injectable
class RepositoryCubit extends Cubit<RepositoryState> {
  RepositoryCubit() : super(const RepositoryState.initial());
}
