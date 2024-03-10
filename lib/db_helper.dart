import 'dart:html';

import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;

class DBHelper {
  static Database? _db;
  Future<Database?> get db async {
    if (_db != null) {
      return _db!;
    }

    _db = await initDataBase();
  }

  initDataBase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
  }
}
