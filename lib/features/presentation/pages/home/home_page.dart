import 'package:provider/provider.dart' as provider;


import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zara_ao/features/data/providers/todoProvider.dart';
import 'package:zara_ao/features/presentation/widgets/modal.dart';
import 'package:zara_ao/features/presentation/widgets/widgets.dart';

import '../../../data/model/todo.dart';




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
       AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
               
                Navigator.pop(context); 
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                
                Navigator.pop(context); 
              },
            ),
            ListTile(
              title: Text('Item 3'),
              onTap: () {
               
                Navigator.pop(context); 
              },
            ),
          ],
        ),
      ),
      body: const Card(),
      floatingActionButton: const ShowModal(),

    );
  }
}


class Card extends StatefulWidget {
  const Card({super.key});

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context,index){
        return Container(
      width: 500,
      height: 110,
      child: 
            const CardStudent(todo: Todo(id: "te", description: "te"),
    ));}
    );}
      
     
  }



