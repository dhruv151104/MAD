
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AgeCalculatorPage extends StatefulWidget {
  const AgeCalculatorPage({super.key});

  @override
  _AgeCalculatorPageState createState() => _AgeCalculatorPageState();
}

class _AgeCalculatorPageState extends State<AgeCalculatorPage> {
  DateTime? _selectedDate;
  String _age = '';

  void _calculateAge() {
    if (_selectedDate != null) {
      final today = DateTime.now();
      int years = today.year - _selectedDate!.year;
      int months = today.month - _selectedDate!.month;
      int days = today.day - _selectedDate!.day;

      if (days < 0) {
        months -= 1;
        days += DateTime(today.year, today.month, 0).day;
      }
      if (months < 0) {
        years -= 1;
        months += 12;
      }

      setState(() {
        _age = '$years years, $months months, $days days';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Age Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (picked != null) {
                  setState(() {
                    _selectedDate = picked;
                  });
                }
              },
              child: const Text('Select Date of Birth'),
            ),
            const SizedBox(height: 16),
            if (_selectedDate != null)
              Text('Selected Date: ${DateFormat.yMMMd().format(_selectedDate!)}'),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: _calculateAge, child: const Text('Calculate Age')),
            const SizedBox(height: 16),
            Text(_age, style: const TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}