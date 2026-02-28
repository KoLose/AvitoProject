import 'package:avitoproject/database/service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              await authService.logOut();
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('isLoggedIn', false);
              Navigator.popAndPushNamed(context, '/');
            },
            icon: Icon(Icons.logout)
          ),
        ],
      ),
    );
  }
}