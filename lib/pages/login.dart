import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to MyApp',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Perform login logic here
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Or login with',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/google_logo.png', // Replace with your own Google logo asset
                    width: 24.0,
                    height: 24.0,
                  ),
                  onPressed: () {
                    // Handle Google login
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.facebook),
                  onPressed: () {
                    // Handle Facebook login
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
