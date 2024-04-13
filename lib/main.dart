import 'package:aviz/DI/di.dart';
import 'package:aviz/Features/Home/view/home_screen.dart';
import 'package:aviz/Features/Profile/view/profile_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  await getInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
