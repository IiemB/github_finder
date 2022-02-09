import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChangeThemeCubit extends Cubit<ThemeMode> {
  ChangeThemeCubit() : super(ThemeMode.system);

  bool isDarkMode = false;

  void updateIsDarkMode(BuildContext context) {
    isDarkMode = Theme.of(context).brightness == Brightness.dark;
  }

  void changeTheme() {
    if (isDarkMode) {
      isDarkMode = false;
      emit(ThemeMode.light);
    } else {
      isDarkMode = true;
      emit(ThemeMode.dark);
    }
  }
}
