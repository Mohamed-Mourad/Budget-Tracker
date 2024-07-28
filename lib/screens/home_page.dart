import 'package:budget_tracker/blocs/theme_bloc/theme_bloc.dart';
import 'package:budget_tracker/extensions/extensions.dart';
import 'package:budget_tracker/widgets/expense_filter_widget.dart';
import 'package:budget_tracker/widgets/expenses_widget.dart';
import 'package:budget_tracker/widgets/total_expenses_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello, ${getGreeting()}'),
        actions: [
          BlocBuilder<ThemeBloc, ThemeState>(builder: (context, themeState) {
            return IconButton(
              onPressed: () {
                context.read<ThemeBloc>().add(ThemeEvent.toggleTheme);
              },
              icon: themeState == ThemeState.light ? const Icon(Icons.nightlight_round) : const Icon(Icons.wb_sunny),
            );
          }),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TotalExpensesWidget(),
            SizedBox(height: 14),
            ExpenseFilterWidget(),
            SizedBox(height: 14),
            ExpensesWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.showAddExpenseSheet,
        child: const Icon(Icons.add),
      ),
    );
  }

  String getGreeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }
}
