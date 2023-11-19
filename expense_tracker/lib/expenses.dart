import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Expenses();
  }
}

class _Expenses extends State<Expenses> {
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
