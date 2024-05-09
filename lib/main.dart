import 'package:flutter/material.dart';
import 'package:zara_ao/features/presentation/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zara_o',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 77, 44, 7)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'TOHANO_IZY'),
    );
  }
}