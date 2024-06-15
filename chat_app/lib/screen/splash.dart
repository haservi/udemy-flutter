import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('spalsh'),
      ),
      body: const Text('스플레쉬 이미지 화면'),
    );
  }
}
