import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChangeThemeCubit extends Cubit<ThemeMode> {
  ChangeThemeCubit() : super(ThemeMode.system);

  void changeTheme() {
    switch (SchedulerBinding.instance!.window.platformBrightness) {
      case Brightness.dark:
        emit(ThemeMode.light);
        break;
      case Brightness.light:
        emit(ThemeMode.dark);
        break;
      default:
        emit(ThemeMode.system);
    }
  }
}
