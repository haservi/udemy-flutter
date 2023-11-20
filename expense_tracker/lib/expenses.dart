import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Expenses();
  }
}

class _Expenses extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: '플러터 코스',
      amount: 20.01,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: '영화 보기',
      amount: 40,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text(
            'The chart',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Expense list...',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
