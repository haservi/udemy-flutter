import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 159, 19, 80),
            Color.fromARGB(255, 107, 68, 172),
          ],
        ),
      ),
      child: const Center(
        child: Text(
          'Hello world?',
          style: TextStyle(color: Colors.amberAccent, fontSize: 28),
        ),
      ),
    );
  }
}
