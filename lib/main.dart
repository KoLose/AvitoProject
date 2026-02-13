import 'package:avitoproject/auth_page.dart';
import 'package:avitoproject/reg_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Benova',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => AuthPage(),
        '/reg': (context) => RegPage(),
      },
    );
  }
}
