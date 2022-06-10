import 'dart:async';
import 'database_helper.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';

class Injection {
  static final DatabaseHelper _databaseHelper = DatabaseHelper();

  Injector initialize(Injector injector) {
    injector.map<DatabaseHelper>((i) => _databaseHelper, isSingleton: true);

    return injector;
  }
}
