import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('test'),
            SizedBox(height: 30),
            Text('List of answer ansd question'),
            SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}