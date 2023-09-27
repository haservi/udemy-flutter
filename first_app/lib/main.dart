import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 159, 19, 80),
          Color.fromARGB(255, 107, 68, 172),
        ),
      ),
    ),
  );
}
