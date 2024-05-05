import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: ElevatedButton(
                   style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Hello world')));
                     },
                    child: Text('Press ME'),
          ) ,
      ),
    );
  }
}