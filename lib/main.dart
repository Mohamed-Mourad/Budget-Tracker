import 'package:budget_tracker/app.dart';
import 'package:budget_tracker/data/local_data_storage.dart';
import 'package:budget_tracker/data/shared_preferences.dart';
import 'package:budget_tracker/repositories/expense_repository.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final storage = LocalDataStorage();
  await storage.initialize();

  await CacheHelper.init();

  final expenseRepository = ExpenseRepository(storage: storage);

  runApp(App(expenseRepository: expenseRepository));
}
