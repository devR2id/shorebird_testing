import 'package:apptesting/core/errors/exceptions.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../datasources/database_schema.dart';

part 'database_tables.dart';

class DatabaseHelper {
  static final DatabaseHelper _intance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() => _intance;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    try {
      String dbPath = join(await getDatabasesPath(), "app_database.db");
      return await openDatabase(
        dbPath,
        version: 1,
        onCreate: _onCreateDatabase,
      );
    } catch (e) {
      throw InitializeException("Failed to initialize database: $e");
    }
  }

  Future<void> _onCreateDatabase(Database db, int version) async {
    await db.execute(createTableItems);
    await db.execute(createTableUsers);
    await db.execute(createTableUserItems);
  }

  Future<int> insert(String table, Map<String, dynamic> value) async {
    final db = await database;
    try {
      return await db.insert(table, value);
    } catch (e) {
      throw InsertException("Failed to insert item: $e");
    }
  }

  Future<List<T>> list<T>(String table, T Function(Map<String, dynamic>) fromJson) async {
    final db = await database;
    try {
      final List<Map<String, dynamic>> maps = await db.query(table);
      return List.generate(maps.length, (i) => fromJson(maps[i]));
    } catch (e) {
      throw QueryException("Failed to list: $e");
    }
  }

  Future<int> update<T>(String table, int id, Map<String, dynamic> value) async {
    final db = await database;
    try {
      return await db.update(table, value, where: "id = ?", whereArgs: [id]);
    } catch (e) {
      throw UpdateException("Failed to update: $e");
    }
  }

  Future<int> delete(String table, int id) async {
    final db = await database;
    try {
      return await db.delete(table, where: "id = ?", whereArgs: [id]);
    } catch (e) {
      throw DeleteException("Failed to delete: $e");
    }
  }
}
