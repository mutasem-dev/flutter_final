import 'package:sqflite/sqflite.dart';
class DatabaseProvider {
  DatabaseProvider._();

  static final DatabaseProvider db = DatabaseProvider._();
  static final int version = 1;
  static Database _database;
  static final String tableName = 'contacts';
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    path += 'contacts.db';
    return await openDatabase(
      path,
      version: version,
      onCreate: (db, version) async {
        await db.execute('''
          create table $tableName (
            id integer primary key autoincrement,
            name text not null,
            phone text not null
          ),
          
          ''');
      },
    );
  }

  //function to get all contacts in ascending order

  //function to insert a new contact to the database

  //function to get one contact by id

  // function to remove one contact by id

  //function to update on contact
}
