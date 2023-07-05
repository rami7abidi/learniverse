// ignore_for_file: unused_import

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:stage/pages/login.dart';
// ignore: depend_on_referenced_packages
import 'package:stage/pages/signuppr.dart';
// ignore: depend_on_referenced_packages
import 'package:stage/pages/signupst.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[300],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(
                size: 150,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to LoginScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPr()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      minimumSize: const Size(200, 50),
                    ),
                    child: const Text('Professor'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to SignUpScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpSt()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      minimumSize: const Size(200, 50),
                    ),
                    child: const Text('Student'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
