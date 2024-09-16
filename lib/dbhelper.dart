import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBhelper {
  DBhelper._();
 static  DBhelper getInstance()=> DBhelper._();
  Database? mDB;
  static final String Table_note_name = "notes";
  static final String Column_note_id = "note_id";
  static final String Column_note_title = "note_title";
  static final String Column_note_desc = "note_desc";


  Future<Database> getdb() async {
    if(mDB!=null){
      return mDB!;
    } else{
      mDB= await opendb();
      return mDB!;
    }

  }
  Future<Database> opendb() async{
    var  appdir= await getApplicationDocumentsDirectory();
    var dbpath= join(appdir.path, "todo.db");
    return openDatabase(dbpath,version: 1,onCreate: (db,version){
      db.execute( " create table $Table_note_name ( $Column_note_id integer  primary key autoincrement, $Column_note_title text, $Column_note_desc text ) ");
    });

  }

  Future<bool> createnote({ required String title, required String desc}) async {
    var db= await getdb();
    int rowseffected= await db.insert(Table_note_name, {
      Column_note_title: title,
      Column_note_desc: desc

    });
    return rowseffected>0;
  }
   Future<List<Map<String,dynamic>>> getnotes() async{
    var db= await getdb();
    List<Map<String,dynamic>> mdata=  await db.query(Table_note_name);
    return mdata;
   }
  Future<bool> updatenotes({required String title, required String desc, required int id}) async{
    var db = await  getdb();
  int updated= await db.update(Table_note_name, {
    Column_note_title:title,
    Column_note_desc:desc,

  },where: " $Column_note_id = $id ");
  return updated>0;
  }
  Future <bool> deletenotes({required int id}) async{
    var db=  await getdb();


    int deleted= await db.delete(Table_note_name, where: " $Column_note_id = $id");


    return deleted>0;

  }

}
/*
mport 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  DbHelper._();

  static DbHelper getInstance() => DbHelper._();
  Database? mDB;
  static final String Table_note_name = "notes";
  static final String Column_note_id = "note_id";
  static final String Column_note_title = "note_title";
  static final String Column_note_desc = "note_desc";
  Future<Database> getDB() async {
    if (mDB != null) {
      return mDB!;
    } else {
      mDB = await openDB();
      return mDB!;
    }
  }

  Future<Database> openDB() async {
    var Appdir = await getApplicationDocumentsDirectory();
    var dbPath = join(Appdir.path, "notes.db");
    return openDatabase(dbPath, version: 1, onCreate: (db, version) {
      db.execute(
          "create table $Table_note_name ( $Column_note_id integer primary key autoincrement, $Column_note_title text, $Column_note_desc text)");
    });
  }

  Future<bool> addnote({required String title, required String desc}) async {
    var db = await getDB();
    int rowsaffected = await db.insert(Table_note_name, {
      Column_note_title: title,
      Column_note_desc: desc,
    });

    return rowsaffected > 0;
  }

  Future<List<Map<String, dynamic>>> getnotes() async {
    var db = await getDB();
    List<Map<String, dynamic>> mdata = await db.query(Table_note_name);

    return mdata;
  }

  Future<bool> updatenotes(
      {required String title, required String desc, required int id}) async {
    var db = await getDB();
    int updated = await db.update(
        Table_note_name,
        {
          Column_note_title: title,
          Column_note_desc: desc,
        },
        where: " $Column_note_id = $id");

    return updated > 0;
  }
  Future <bool> deletenotes({required int id}) async{
    var db=  await getDB();


    int deleted= await db.delete(Table_note_name, where: " $Column_note_id = $id");


    return deleted>0;

  }
} */
