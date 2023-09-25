import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
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
              'Hello world',
              style: TextStyle(color: Colors.amberAccent, fontSize: 28),
            ),
          ),
        ),
      ),
    ),
  );
}
