// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/user_list/bloc/user_bloc.dart' as _i5;
import '../features/user_list/interfaces/user_list_interface.dart' as _i3;
import '../features/user_list/repositories/user_list_repositories.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.UserListInterface>(() => _i4.UserListRepositories());
  gh.factory<_i5.UserCubit>(() => _i5.UserCubit(get<_i3.UserListInterface>()));
  return get;
}
