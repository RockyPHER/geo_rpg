import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rpg_geo/screen/newGamePage.dart';
import 'package:rpg_geo/screen/settingsPage.dart';
import 'package:rpg_geo/model/gameFlow.dart';
import 'package:window_manager/window_manager.dart';

void main() {
  setupWindow();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Gameflow()),
      ],
      child: const MyApp(),
    ),
  );
}

const double windowWidth = 360;
const double windowHeight = 600;

void setupWindow() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = WindowOptions(
    size: Size(360, 600),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.normal,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NewGamePage()));
          },
          icon: Icon(Icons.play_arrow),
          label: SizedBox.shrink(),
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              fixedSize: Size(64, 64)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[200],
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SettingsPage(),
              ));
        },
        child: Icon(
          Icons.settings,
          color: Colors.black,
        ),
      ),
    );
  }
}
