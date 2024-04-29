// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("welcome"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 127, 129, 24),
      ),
      body: Row(
        children: <Widget>[
          Expanded(child: Container(
            padding: const EdgeInsets.all(30.0),
            color: const Color.fromARGB(255, 117, 109, 204),
            child: const Text("One"),
          )
          ),
          Expanded(child: 
          Container(
            padding: const EdgeInsets.all(30.0),
            color: const Color.fromARGB(255, 24, 122, 129),
            child: const Text("Two"),
          )
          ),

          Expanded(child: 
          Container(
            padding: const EdgeInsets.all(30.0),
            color: const Color.fromARGB(255, 24, 129, 42),
            child: const Text("Three"),
          )
          )
        ]
      ),
      floatingActionButton: const MyFloatingActionButton(),
    );
  }
}

class MyFloatingActionButton extends StatefulWidget {
  const MyFloatingActionButton({Key? key});

  @override
  _MyFloatingActionButtonState createState() => _MyFloatingActionButtonState();
}

class _MyFloatingActionButtonState extends State<MyFloatingActionButton> {
  bool _clicked = false;

  @override
  Widget build(BuildContext context) {
    // Background color of FloatingActionButton
    const backgroundColor = Color.fromARGB(255, 175, 8, 8);

    return FloatingActionButton(
      onPressed: () {
        setState(() {
          _clicked = !_clicked;
        });
      },
      backgroundColor: backgroundColor,
      child: _clicked ? const Text('Clicked') : const Text('Click Me'),
    );
  }
}
