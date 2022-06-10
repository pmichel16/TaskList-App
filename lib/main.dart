import 'package:flutter/material.dart';
import 'package:todo_app/theme.dart';

import 'homepage.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // final injector = Injection().initialize(Injector());
  // final dbHelper = injector.get<DatabaseHelper>();
  // dbHelper.initDb();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //Start app
    return MaterialApp(home: const HomePage(), theme: theme);
  }
}
