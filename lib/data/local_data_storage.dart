import 'package:budget_tracker/data/database_helper.dart';
import 'package:budget_tracker/models/expense.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sqflite/sqflite.dart';

class LocalDataStorage {
  LocalDataStorage() {
    _initialize();
  }

  final _controller = BehaviorSubject<List<Expense?>>.seeded(const []);
  Future<Database> db = DatabaseHelper().database;

  Future<void> _initialize() async {
    final expenses = await DatabaseHelper().getExpenses(await db);
    _controller.add(expenses);
  }

  Stream<List<Expense?>> getExpenses() => _controller.asBroadcastStream();

  Future<void> saveExpense(Expense expense) async {
    await DatabaseHelper().insertExpense(expense: expense);
    final expenses = await DatabaseHelper().getExpenses(await db);
    _controller.add(expenses);
  }

  Future<void> deleteExpense(String id) async {
    await DatabaseHelper().deleteExpense(id: id);
    final expenses = await DatabaseHelper().getExpenses(await db);
    _controller.add(expenses);
  }

  Future<void> initialize() async {
    await _initialize();
  }
}
