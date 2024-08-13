import 'package:flutter/material.dart';
import 'package:moto_den_pk/Screens/splash_page.dart';

void main() {
  runApp(const StartUp());
}

class StartUp extends StatelessWidget {
  const StartUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Page(),
    );
  }
}
