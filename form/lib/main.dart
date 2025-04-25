import 'package:flutter/material.dart';
import 'package:form/book_details.dart';
import 'package:form/calculator_page.dart';
import 'package:form/form_screen.dart';
import 'package:form/screens.dart';
import 'package:form/song_list.dart';
import 'package:form/student_details.dart';
import 'package:form/tempagecalc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const FormScreen(),
      // home: const HomePage(),
      home: const SongListPage(),
      // home: const BookDetails(),
      // home: const StudentDetails(),
      // home: const CalculatorPage(),
      // home: const ScreenOne(),
    );
  }
}
