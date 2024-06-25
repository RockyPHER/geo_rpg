import 'package:flutter/material.dart';

class NewGamePage extends StatefulWidget {
  const NewGamePage({super.key});

  @override
  State<NewGamePage> createState() => _NewGamePageState();
}

class _NewGamePageState extends State<NewGamePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text("New Game"),
    ));
  }
}
