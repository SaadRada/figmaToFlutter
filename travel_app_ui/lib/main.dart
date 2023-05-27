import 'package:flutter/material.dart';
import 'package:travel_app_ui/views/home.dart';
import 'package:travel_app_ui/views/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App Ui',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      initialRoute: "login",
      routes: {
        "login": (context) => const LoginView(),
        "home": (context) => const HomeView(),
      },
    );
  }
}
