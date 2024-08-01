import 'package:budget_tracker/data/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeEvent { toggleTheme }
enum ThemeState { light, dark }

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.light) {
    _loadTheme();
    on<ThemeEvent>((event, emit) async {
      if (event == ThemeEvent.toggleTheme) {
        final isDark = state == ThemeState.light;
        emit(isDark ? ThemeState.dark : ThemeState.light);
        CacheHelper.sharedPreferences.setBool(_themeKey, !isDark);
      }
    });
  }

  final String _themeKey = 'theme';

  Future<void> _loadTheme() async {
    final isDark = CacheHelper.sharedPreferences.getBool(_themeKey) ?? false;
    emit(isDark ? ThemeState.dark : ThemeState.light);
  }
}
