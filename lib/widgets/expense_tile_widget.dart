import 'package:budget_tracker/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:budget_tracker/blocs/expense_list/expense_list_bloc.dart';
import 'package:budget_tracker/extensions/extensions.dart';
import 'package:budget_tracker/models/expense.dart';
import 'package:intl/intl.dart';

class ExpenseTileWidget extends StatelessWidget {
  const ExpenseTileWidget({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final formattedDate = DateFormat('dd/MM/yyyy').format(expense.date);

    final currency = NumberFormat.currency(symbol: '\$', decimalDigits: 0);
    final price = currency.format(expense.amount);

    return Dismissible(
      key: ValueKey(expense.id),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.all(16),
        color: colorScheme.error,
        child: Icon(Icons.delete, color: colorScheme.onError),
      ),
      onDismissed: (direction) {
        context
            .read<ExpenseListBloc>()
            .add(ExpenseListExpenseDeleted(expense: expense));
      },
      child: ListTile(
        onTap: () => context.showAddExpenseSheet(expense: expense),
        leading: getCategoryIcon(expense.category, context),
        title: Text(expense.title, style: textTheme.titleMedium),
        subtitle: Text(
          formattedDate,
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurface.withOpacity(0.5),
          ),
        ),
        trailing: Text('-$price', style: textTheme.titleLarge),
      ),
    );
  }

  Icon getCategoryIcon(Category category, BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    switch (category) {
      case Category.grocery:
        return Icon(Icons.shopping_cart, color: color);
      case Category.food:
        return Icon(Icons.fastfood, color: color);
      case Category.work:
        return Icon(Icons.work, color: color);
      case Category.entertainment:
        return Icon(Icons.movie, color: color);
      case Category.traveling:
        return Icon(Icons.airplanemode_active, color: color);
      case Category.other:
        return Icon(Icons.category, color: color);
      case Category.all:
      default:
        return Icon(Icons.all_inclusive, color: color);
    }
  }
}
