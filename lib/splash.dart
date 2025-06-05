import 'package:flutter/material.dart';
import 'package:intern1/welcome.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState;
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => welcomescreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 17, 17),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Lottie.asset('assets/instaani.json')),
          SizedBox(height: 50),
          Text(
            "Meta",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ], //for animation from lottie
      ),
    );
  }
}
