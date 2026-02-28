import 'package:avitoproject/database/service.dart';
import 'package:flutter/material.dart';

class RecoveryPage extends StatefulWidget {
  const RecoveryPage({super.key});

  @override
  State<RecoveryPage> createState() => _RecoveryPageState();
}

class _RecoveryPageState extends State<RecoveryPage> {
  TextEditingController emailController = TextEditingController();
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.45,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                controller: emailController,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.orange),
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                  hintText: 'Введите email',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black26),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15),
                    ),
                  ),
                  backgroundColor: WidgetStatePropertyAll(Colors.orange),
                ),
                onPressed: () async {
                  if (emailController.text.isNotEmpty) {
                    await authService.recoveryPassword(emailController.text);
                  }
                  else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Заполните поля!"),
                        backgroundColor: Colors.black,
                      ),
                    );
                  }
                },
                child: Text(
                  'Восстановить пароль',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text(
                    "Назад",
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
