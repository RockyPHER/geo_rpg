import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:rpg_geo/screen/loadGamePage.dart';
import 'package:rpg_geo/screen/newGamePage.dart';
import 'package:rpg_geo/screen/settingsPage.dart';
import 'package:window_size/window_size.dart';

void main() {
  setupWindow();
  runApp(
    const MaterialApp(
      home: HomePage(),
    ),
  );
}

const double windowWidth = 1024;
const double windowHeight = 800;

void setupWindow() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle('RPG GEO');
    setWindowMinSize(const Size(windowWidth, windowHeight));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  bottom: const TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(Icons.play_arrow),
                        text: "New Game",
                      ),
                      Tab(
                        icon: Icon(Icons.save),
                        text: "Load Game",
                      ),
                      Tab(
                        icon: Icon(Icons.settings),
                        text: "Settings",
                      )
                    ],
                  ),
                  title: Center(
                    child: Text("RPG GEO"),
                  ),
                ),
                body: const TabBarView(
                  children: [
                    NewGamePage(),
                    LoadGamePage(),
                    SettingsPage(),
                  ],
                ))));
  }
}
