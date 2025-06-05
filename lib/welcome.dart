import 'package:flutter/material.dart';
import 'package:intern1/login.dart';
import 'package:intern1/registration.dart';
import 'package:lottie/lottie.dart';

class welcomescreen extends StatelessWidget {
  const welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 252, 252),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset('assets/meta.json', width: 100, height: 100),
          ),
          Image.network(
            "https://www.pngplay.com/wp-content/uploads/1/Instagram-Logo-Transparent-File.png",
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Loginscreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(25),
              ),
              minimumSize: Size(255, 50),
            ),
            child: Text(
              "Login",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ),
          SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Registrationscreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Color.fromARGB(255, 255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(25),
              ),
              minimumSize: Size(250, 50),
            ),
            child: Text(
              "Register",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}
