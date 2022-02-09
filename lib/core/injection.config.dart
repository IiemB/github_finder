// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/repository_list/cubit/repository_cubit.dart' as _i7;
import '../features/repository_list/interfaces/repository_list_interface.dart'
    as _i3;
import '../features/repository_list/repositories/repository_list_repositories.dart'
    as _i4;
import '../features/user_list/cubit/user_cubit.dart' as _i8;
import '../features/user_list/interfaces/user_list_interface.dart' as _i5;
import '../features/user_list/repositories/user_list_repositories.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.RepositoryListInterface>(
      () => _i4.RepositoryListRepositories());
  gh.lazySingleton<_i5.UserListInterface>(() => _i6.UserListRepositories());
  gh.factory<_i7.RepositoryCubit>(
      () => _i7.RepositoryCubit(get<_i3.RepositoryListInterface>()));
  gh.factory<_i8.UserCubit>(() => _i8.UserCubit(get<_i5.UserListInterface>()));
  return get;
}
