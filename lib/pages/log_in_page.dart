import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.login, // Icon relevan dengan login
              size: 100,
              color: Color.fromRGBO(9, 52, 84, 1), // Warna ikon
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: null, 
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey), 
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black87), 
              ),
              child: const Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
