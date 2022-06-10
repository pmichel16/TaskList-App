import 'dart:io' as io;
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper.internal();

  factory DatabaseHelper() => _instance;
  static late Database _db;

  DatabaseHelper.internal();

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "display_text.db");
    _db = await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Database get db {
    return _db;
  }

  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute('CREATE TABLE DisplayText(id INTEGER PRIMARY KEY, text TEXT)');
  }

  Future<int> create(String text) async {
    final displayText = DisplayText(text: text);
    int id = await _db.insert("DisplayText", displayText.toMapWithoutId());
    return id;
  }

  Future<DisplayText?> getItemById(int id) async {
    List<Map<String, dynamic>> list = await _db.rawQuery("SELECT * FROM DisplayText WHERE id = ?", [id]);
    if (list.isNotEmpty) {
      return DisplayText.fromMap(list[0]);
    }
    return null;
  }

  Future<int> updateItem(DisplayText item) async {
    return await _db.update("DisplayText", item.toMap(), where: "id = ?", whereArgs: [item.id]);
  }

  Future<int> deleteItem(int id) async {
    return await _db.delete("DisplayText", where: "id = ?", whereArgs: [id]);
  }
}

class DisplayText {
  int id = 0;
  String text;

  DisplayText({this.id = 0, required this.text});

  Map<String, dynamic> toMapWithoutId() {
    final map = <String, dynamic>{};
    map["text"] = text;
    return map;
  }

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map["id"] = id;
    map["text"] = text;
    return map;
  }

  factory DisplayText.fromMap(Map<String, dynamic> data) => DisplayText(id: data['id'], text: data['text']);
}
