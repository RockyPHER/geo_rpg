import 'package:flutter/material.dart';

class LoadGamePage extends StatefulWidget {
  const LoadGamePage({super.key});

  @override
  State<LoadGamePage> createState() => _LoadGamePageState();
}

class _LoadGamePageState extends State<LoadGamePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text("LoadGame"),
    ));
  }
}
