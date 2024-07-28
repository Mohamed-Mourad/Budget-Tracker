import 'package:budget_tracker/blocs/expense_list/expense_list_bloc.dart';
import 'package:budget_tracker/blocs/theme_bloc/theme_bloc.dart';
import 'package:budget_tracker/repositories/expense_repository.dart';
import 'package:budget_tracker/screens/home_page.dart';
import 'package:budget_tracker/themes/dark_theme.dart';
import 'package:budget_tracker/themes/light_theme.dart';
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
              home: const HomePage(),
              theme: themeState == ThemeState.light ? LightTheme.theme : DarkTheme.theme,
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      ),
    );
  }
}
