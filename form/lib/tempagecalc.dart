import 'package:flutter/material.dart';
import 'age_calculator.dart';
import 'package:form/temperature_conversion.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: const Text(
                'Navigation',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text('Temperature Conversion'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TemperatureConversionPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Age Calculator'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AgeCalculatorPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(child: Text('Select a page from the drawer')),
    );
  }
}
