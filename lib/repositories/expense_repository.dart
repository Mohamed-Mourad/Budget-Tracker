import 'package:budget_tracker/data/local_data_storage.dart';
import 'package:budget_tracker/models/expense.dart';

class ExpenseRepository {
  final LocalDataStorage storage;

  ExpenseRepository({required this.storage});

  Stream<List<Expense?>> getExpenses() {
    return storage.getExpenses();
  }

  Future<void> saveExpense(Expense expense) async {
    await storage.saveExpense(expense);
  }

  Future<void> deleteExpense(String id) async {
    await storage.deleteExpense(id);
  }
}
