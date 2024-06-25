import 'package:flutter/material.dart';
import 'package:rpg_geo/main.dart';

class LoadGamePage extends StatefulWidget {
  const LoadGamePage({super.key});

  @override
  State<LoadGamePage> createState() => _LoadGamePageState();
}

class _LoadGamePageState extends State<LoadGamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey[200],
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        body: Center(
          child: Text("LoadGame"),
        ));
  }
}
