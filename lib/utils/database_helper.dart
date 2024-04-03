import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static DatabaseHelper _databaseHelper;

  factory DatabaseHelper() {
    _databaseHelper = DatabaseHelper._createInstance();
  }
}
