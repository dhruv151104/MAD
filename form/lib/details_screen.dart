import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String name;
  final String email;
  final String city;
  final String gender;
  final String dateOfBirth;

  const DetailsScreen({
    super.key,
    required this.name,
    required this.email,
    required this.city,
    required this.gender,
    required this.dateOfBirth,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name', style: const TextStyle(fontSize: 18)),
            Text('Email: $email', style: const TextStyle(fontSize: 18)),
            Text('City: $city', style: const TextStyle(fontSize: 18)),
            Text('Gender: $gender', style: const TextStyle(fontSize: 18)),
            Text(
              'Date of Birth: $dateOfBirth',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
