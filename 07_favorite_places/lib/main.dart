import 'package:favorite_places/screens/places.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '장소 보기',
      debugShowCheckedModeBanner: false,
      home: const PlacesScreen(),
    );
  }
}
