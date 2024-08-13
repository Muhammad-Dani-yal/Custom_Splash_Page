import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moto_den_pk/Screens/home_page.dart';

class Splash_Page extends StatefulWidget {
  const Splash_Page({super.key});

  @override
  State<Splash_Page> createState() => _Splash_Page();
}

class _Splash_Page extends State<Splash_Page>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.forward();

    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 34, 34, 34),
          Color.fromARGB(255, 34, 34, 34),
          Color.fromARGB(255, 255, 20, 3),
        ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        child: Center(
          child: FadeTransition(
            opacity: _animation,
            child: Image.asset("assets/images/logo.png", fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}
