import 'package:budget_tracker/blocs/expense_list/expense_list_bloc.dart';
import 'package:budget_tracker/blocs/theme_bloc/theme_bloc.dart';
import 'package:budget_tracker/data/shared_preferences.dart';
import 'package:budget_tracker/repositories/expense_repository.dart';
import 'package:budget_tracker/screens/home_page.dart';
import 'package:budget_tracker/screens/on_boarding_page.dart';
import 'package:budget_tracker/themes/dark_theme.dart';
import 'package:budget_tracker/themes/light_theme.dart';
import 'package:budget_tracker/themes/pink_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key, required this.expenseRepository});

  final ExpenseRepository expenseRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: expenseRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ExpenseListBloc(
              repository: expenseRepository,
            )..add(const ExpenseListSubscriptionRequested()),
          ),
          BlocProvider(
            create: (context) => ThemeBloc(),
          ),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, themeState) {
            return MaterialApp(
              home: _getHome(),
              theme: _getThemeData(themeState),
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      ),
    );
  }

  ThemeData _getThemeData(ThemeState themeState) {
    switch (themeState) {
      case ThemeState.light:
        return LightTheme.theme;
      case ThemeState.dark:
        return DarkTheme.theme;
      case ThemeState.pink:
        return PinkTheme.theme; // Apply the pink theme
    }
  }

  Widget _getHome() {
    bool? onBoarding = CacheHelper.getData(key: 'onBoarding');

    if (onBoarding != null) {
      return const HomePage();
    } else {
      return const OnBoardingScreen();
    }
  }
}
