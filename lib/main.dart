import 'package:doctor_app/features/auth/screens/login_screen.dart';
import 'package:doctor_app/features/home/screen/home_page_screen.dart';
import 'package:doctor_app/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: ((settings) => generateRoute(settings)),
      debugShowCheckedModeBanner: false,
      home: 2 == 1 ? const HomePage() : const LoginScreen(),
    );
  }
}
