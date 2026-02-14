import 'package:avitoproject/auth_page.dart';
import 'package:avitoproject/reg_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://jdexyacedtkwroglzawr.supabase.co',
    anonKey: 'sb_publishable_5lAeJexDWhGRe4b_4jEtTg_wZ-lc8Eq',
  );
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
