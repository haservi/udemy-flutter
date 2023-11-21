import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 5),
            Text(
              expense.amount.toStringAsFixed(2),
            ),
          ],
        ),
      ),
    );
  }
}
