import 'package:flowmodoro_app/providers/stats_provider.dart';
import 'package:flowmodoro_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const FlowmodoroApp());
}

class FlowmodoroApp extends StatelessWidget {
  const FlowmodoroApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => StatsProvider())],
      child: MaterialApp(
        theme: ThemeData.dark(),
        title: 'Flowmodoro App',
        initialRoute: 'home_screen',
        routes: {
          'home_screen': (context) => HomeScreen(),
          // 'stats_screen': (context) => StatsScreen(),
          // 'register_screen': (context) => RegisterScreen(),
          // 'login_screen': (context) => LoginScreen(),
        },
      ),
    );
  }
}
