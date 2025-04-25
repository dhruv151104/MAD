import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final mobileController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Screen One')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: mobileController,
              decoration: const InputDecoration(labelText: 'Mobile Number'),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => ScreenTwo(
                          name: nameController.text,
                          mobile: mobileController.text,
                        ),
                  ),
                );
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  final String name;
  final String mobile;

  const ScreenTwo({super.key, required this.name, required this.mobile});

  @override
  Widget build(BuildContext context) {
    final addressController = TextEditingController();
    final cityController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Screen Two')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: addressController,
              decoration: const InputDecoration(labelText: 'Address'),
            ),
            TextField(
              controller: cityController,
              decoration: const InputDecoration(labelText: 'City'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => ScreenThree(
                          name: name,
                          mobile: mobile,
                          address: addressController.text,
                          city: cityController.text,
                        ),
                  ),
                );
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenThree extends StatelessWidget {
  final String name;
  final String mobile;
  final String address;
  final String city;

  const ScreenThree({
    super.key,
    required this.name,
    required this.mobile,
    required this.address,
    required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen Three')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name'),
            Text('Mobile: $mobile'),
            Text('Address: $address'),
            Text('City: $city'),
          ],
        ),
      ),
    );
  }
}
