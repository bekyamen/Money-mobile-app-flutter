import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
class ThemeCubit extends Cubit<bool> {
  ThemeCubit() : super(false);
  static const String _themeKey = 'isDarkTheme';
  void toggleTheme() async {
    final newState = !state;
    emit(newState);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_themeKey, newState);
  }
  void loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool(_themeKey) ?? false;
    emit(isDark);
  }
}
