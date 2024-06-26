import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpg_geo/main.dart';
import 'package:rpg_geo/model/gameFlow.dart';

class NewGamePage extends StatefulWidget {
  const NewGamePage({super.key});

  @override
  State<NewGamePage> createState() => _NewGamePageState();
}

class _NewGamePageState extends State<NewGamePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<Gameflow>(context, listen: false).setStart();
    });
  }

  @override
  Widget build(BuildContext context) {
    final gameFlow = Provider.of<Gameflow>(context);

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 80),
                child: Text(gameFlow.content),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () =>
                            gameFlow.selectedOption(gameFlow.option1),
                        child: Text(gameFlow.option1),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () =>
                            gameFlow.selectedOption(gameFlow.option2),
                        child: Text(gameFlow.option2),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () =>
                            gameFlow.selectedOption(gameFlow.option3),
                        child: Text(gameFlow.option3),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
