// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/change_theme/cubit/change_theme_cubit.dart' as _i3;
import '../features/repository_list/cubit/repository_cubit.dart' as _i8;
import '../features/repository_list/interfaces/repository_list_interface.dart'
    as _i4;
import '../features/repository_list/repositories/repository_list_repositories.dart'
    as _i5;
import '../features/user_list/cubit/user_cubit.dart' as _i9;
import '../features/user_list/interfaces/user_list_interface.dart' as _i6;
import '../features/user_list/repositories/user_list_repositories.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ChangeThemeCubit>(() => _i3.ChangeThemeCubit());
  gh.lazySingleton<_i4.RepositoryListInterface>(
      () => _i5.RepositoryListRepositories());
  gh.lazySingleton<_i6.UserListInterface>(() => _i7.UserListRepositories());
  gh.factory<_i8.RepositoryCubit>(
      () => _i8.RepositoryCubit(get<_i4.RepositoryListInterface>()));
  gh.factory<_i9.UserCubit>(() => _i9.UserCubit(get<_i6.UserListInterface>()));
  return get;
}
