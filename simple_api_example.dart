import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SimpleApiExample extends StatefulWidget {
  const SimpleApiExample({super.key});

  @override
  State<SimpleApiExample> createState() => _SimpleApiExampleState();
}

class _SimpleApiExampleState extends State<SimpleApiExample> {
  String result = "Press button to call API";

  Future<void> callApi() async {
    final url = Uri.parse("http://98.92.127.90:3000/customers");
    final token = "PASTE_YOUR_TOKEN_HERE";

    try {
      final response = await http.get(
        url,
        headers: {
          "Authorization": "Bearer ",
          "Content-Type": "application/json",
        },
      );

      setState(() {
        result =
            "Status: ${response.statusCode}\n\nResponse:\n${response.body}";
      });
    } catch (e) {
      setState(() {
        result = "Error: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple API Example")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: callApi,
              child: const Text("Call API"),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text(result),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
