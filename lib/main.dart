import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:todo_app/task_list.dart';
import 'package:todo_app/theme.dart';

import 'Helpers/database_helper.dart';
import 'Helpers/injection.dart';

import 'calendar.dart';
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
  int _selectedIndex = 0;
  late final List<Widget> _widgetOptions = [
    const TaskList(),
    const Calendar(),
    const Text("Settings"),
  ];

  @override
  Widget build(BuildContext context) {
    //Start app
    return MaterialApp(home: const HomePage(), theme: theme);
  }
}
