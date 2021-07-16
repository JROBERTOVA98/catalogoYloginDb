import 'dart:async';
import 'dart:io' as io;
import 'package:new_version/model/usuario.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "test.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        "CREATE TABLE Usuario(id INTEGER PRIMARY KEY, correo TEXT, password TEXT )");
    print("Created tables");
  }

  void saveUsuario(Usuario usuarios) async {
    var dbClient = await db;
    await dbClient.transaction((txn) async {
      return await txn.rawInsert(
          'INSERT INTO Usuarios(correo, password) VALUES(' + 
              usuarios.correo +
              usuarios.password +
              ')');
    });
  }

  Future<List<Usuario>> getUsuario() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Usuario');
    // ignore: deprecated_member_use
    List<Usuario> usuarios = new List();
    for (int i = 0; i < list.length; i++) {
      usuarios.add(new Usuario(list[i]["correo"],list[i]["password"]));
    }
    print(usuarios.length);
    return usuarios;
  }

  void saveUsu(Usuario usuario) {}
}
