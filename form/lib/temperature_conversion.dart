import 'package:flutter/material.dart';

class TemperatureConversionPage extends StatefulWidget {
  const TemperatureConversionPage({super.key});

  @override
  _TemperatureConversionPageState createState() =>
      _TemperatureConversionPageState();
}

class _TemperatureConversionPageState extends State<TemperatureConversionPage> {
  final _formKey = GlobalKey<FormState>();
  final _temperatureController = TextEditingController();
  String _selectedUnit = 'Celsius';
  String _convertedTemperature = '';

  void _convertTemperature() {
    if (_formKey.currentState!.validate()) {
      double temperature = double.parse(_temperatureController.text);
      double convertedTemp;

      if (_selectedUnit == 'Celsius') {
        convertedTemp = (temperature * 9 / 5) + 32; // Celsius to Fahrenheit
        setState(() {
          _convertedTemperature =
              '${temperature.toStringAsFixed(2)} °C = ${convertedTemp.toStringAsFixed(2)} °F';
        });
      } else {
        convertedTemp = (temperature - 32) * 5 / 9; // Fahrenheit to Celsius
        setState(() {
          _convertedTemperature =
              '${temperature.toStringAsFixed(2)} °F = ${convertedTemp.toStringAsFixed(2)} °C';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Temperature Conversion')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _temperatureController,
                decoration: const InputDecoration(labelText: 'Temperature'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a temperature';
                  }
                  if (!RegExp(r'^-?\d+(\.\d+)?$').hasMatch(value)) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              DropdownButton<String>(
                value: _selectedUnit,
                items:
                    <String>['Celsius', 'Fahrenheit'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedUnit = newValue!;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _convertTemperature,
                child: const Text('Convert'),
              ),
              const SizedBox(height: 20),
              Text(_convertedTemperature, style: const TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
