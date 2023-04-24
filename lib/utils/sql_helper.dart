import 'dart:core';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE pengendara(
      pengendaraID PRIMARY KEY AUTOINCREMENT NOT NULL,
      email TEXT,
      nama TEXT,  
      password TEXT,
      createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )""");
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase('ranmits.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTables(database);
    });
  }

  static Future<int> createItem(
    String email,
    String nama,
    String password,
  ) async {
    final db = await SQLHelper.db();
    final data = {'email': email, "nama": nama, "password": password};
    final id = await db.insert('pengendara', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await SQLHelper.db();
    return db.query('pengendara', orderBy: "pengendaraID");
  }

  static Future<List<Map<String, dynamic>>> getItem(int id) async {
    final db = await SQLHelper.db();
    return db.query('pengendara',
        where: "pengendaraID = ?", whereArgs: [id], limit: 1);
  }

  static Future<int> updateItem(
      int pengendaraID, String email, String nama, String password) async {
    final db = await SQLHelper.db();
    final data = {
      'email': email,
      "nama": nama,
      "password": password,
      "createdAt": DateTime.now().toString()
    };

    final result = await db.update(
      'pengendara',
      data,
      where: "pengendaraID = ?",
      whereArgs: [pengendaraID],
    );
    return result;
  }

  static Future<void> deleteItem(int id) async {
    final db = await SQLHelper.db();
    try {
      await db.delete('pengendara', where: "pengendaraID = ?", whereArgs: [id]);
    } catch (err) {
      debugPrint("Something went wrong when deleting an item: $err");
    }
  }
}
