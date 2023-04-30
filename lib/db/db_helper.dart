import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'package:path/path.dart';

class DbHelper {
  static Database? _db;

  static const dbName = 'ranmits.db';
  static const String table = "akunPengendara";
  static const dbVersion = 1;

  static const String pengendaraID = "pengendaraID";
  static const String email = "email";
  static const String nama = "nama";
  static const String password = "password";

  Future<Database> get db async {
    if (_db != null) {
      return _db ??= await initDb();
    }

    _db = await initDb();

    return _db ??= await initDb();
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, dbName);
    var db = await openDatabase(path, version: dbVersion, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int intVersion) async {
    await db.execute("""CREATE TABLE $table(
      $pengendaraID PRIMARY KEY AUTOINCREMENT NOT NULL,
      $email TEXT,
      $nama TEXT,  
      $password TEXT,
      )""");
  }
}
