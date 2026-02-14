import 'package:flutter/material.dart';

class RegPage extends StatefulWidget {
  const RegPage({super.key});

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.45,
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.02),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Имя',
                  hintText: 'Как к вам обращаться?',
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
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.phone),
                  labelText: 'Телефон',
                  hintText: '+7 999 123-45-67',
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
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                cursorColor: Colors.black,
                obscureText: true,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Пароль',
                  hintText: 'Минимум 8 символов',
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
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                cursorColor: Colors.black,
                obscureText: true,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Повторите пароль',
                  hintText: 'Повторите пароль',
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Регистрируясь, вы соглашаетесь с ',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                InkWell(
                  child: Text(
                    'условиями использования',
                    style: TextStyle(color: Colors.blue, fontSize: 12),
                  ),
                  onTap: () {},
                ),
                Text(
                  ' и ',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                InkWell(
                  child: Text(
                    'политикой конфиденциальности',
                    style: TextStyle(color: Colors.blue, fontSize: 12),
                  ),
                  onTap: () {},
                ),
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.02),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.055,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  backgroundColor: WidgetStatePropertyAll(Colors.orange),
                ),
                onPressed: () {},
                child: Text(
                  'Зарегистрироваться',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.02),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Уже есть аккаунт?'),
                TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/login');
                  },
                  child: Text(
                    'Войти',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}