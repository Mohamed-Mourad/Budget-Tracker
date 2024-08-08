import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:budget_tracker/models/expense.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  List<Expense> expenses = [];

  Future<Database> _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'expenses.db'),
      version: 1,
      onCreate: (database, version) {
        database.execute(
          'CREATE TABLE expenses(id TEXT PRIMARY KEY, title TEXT, amount TEXT, category TEXT, date INTEGER)',
        ).then((value) {
        }).catchError((error) {
          print('Error in creating table: ${error.toString()}');
        });
      },
    );
  }

  Future<void> insertExpense({
    required Expense expense,
  }) async {
    final db = await database;
    await db.transaction((txn) {
      return txn.rawInsert(
        'INSERT INTO expenses(id, title, amount, category, date) VALUES(?, ?, ?, ?, ?)',
        [expense.id, expense.title, expense.amount, expense.category.name, expense.date.millisecondsSinceEpoch.toString()],
      );
    });
  }

  Future<List<Expense>> getExpenses(Database db) async {
    expenses = [];
    await db.rawQuery('SELECT * FROM expenses').then((value){
      value.forEach((element){
        expenses.add(Expense.fromJson(element));
      });
    });
    return expenses;
  }

  Future<void> updateExpense({
    required Expense expense,
  }) async {
    final db = await database;
    await db.rawUpdate(
      'UPDATE expenses SET title = ?, amount = ?, category = ?, date = ? WHERE id = ?',
      [expense.title, expense.amount, expense.category, expense.date, expense.id],
    );
  }

  Future<void> deleteExpense({required String id}) async {
    final db = await database;
    await db.rawDelete('DELETE FROM expenses WHERE id = ?', [id]);
  }
}