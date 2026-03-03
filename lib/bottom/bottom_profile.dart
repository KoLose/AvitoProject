import 'package:flutter/material.dart';

class BottomProfilePage extends StatefulWidget {
  const BottomProfilePage({super.key});

  @override
  State<BottomProfilePage> createState() => _BottomProfilePageState();
}

class _BottomProfilePageState extends State<BottomProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.35,
              child: CircleAvatar(
                backgroundImage: NetworkImage(''),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              alignment: Alignment.center,
              child: Text('Имя')
            ),
            Container(
              alignment: Alignment.center,
              child: Text('Почта')
            ),
            InkWell(
              child: Text('Редактировать профиль'),
              onTap: () {}
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text('Настройки'),
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text('Безопасность'),
                  ),
                  ListTile(
                    title: Text('Уведомления'),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Разместить объявление'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}