import 'package:flowmodoro_app/components/clock.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Clock(),
          Text('3/4'),
          Text('Flows today'),
          Text('"Lorem ipsum dolor sit amet, consectur similis."')
        ],
      ),
    );
  }
}
