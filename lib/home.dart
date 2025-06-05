import 'package:flutter/material.dart';
import 'package:intern1/login.dart';

// ignore: camel_case_types
class homepagescreen extends StatelessWidget {
  const homepagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You are in Home page",
            style: TextStyle(color: Colors.blueAccent),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Loginscreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(25),
              ),
            ),
            child: Text("Log out", style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
