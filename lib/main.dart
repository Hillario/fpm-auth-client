import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  Future<void> _authenticate() async {
    const String url = 'https://beta.africartrack.com/login.php';
    final String username = '${usernameController.text.trim()}&';
    final String password = passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      debugPrint('Username or password is empty');
      return;
    }

    final Map<String, dynamic> data = {
      'username': username,
      'password': password,
    };

    // Convert the map to a list containing a single map
    List<Map<String, dynamic>> dataList = [data];

    try {
      final response = await http.post(
        Uri.parse(url),
        body: json.encode(dataList), // Encode data as JSON
        headers: {'Content-Type': 'application/json'}, // Set content type
      );

      final responseData = json.decode(response.body) as Map<String, dynamic>;

      // Handle authentication response here
      final bool success = responseData['success'];
      final String message = responseData['message'];
      debugPrint('Success: $success, Message: $message');
    } catch (e) {
      debugPrint('Client_Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _authenticate,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
