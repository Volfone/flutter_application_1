import 'package:flutter/material.dart';

import 'home.dart';
import 'auth.dart';
import 'list.dart';
import 'calendar.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: AuthPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPage(),
        '/home': (context) => HomePage(),
        '/list': (context) => const ListPage(),
        '/calendar': (context) => const CalendarPage(),
      },
    );
  }
}