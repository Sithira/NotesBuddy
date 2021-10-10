import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:notes_buddy/mappers/api_to_db_mapper.dart';
import 'package:notes_buddy/modals/notes.dart';
import 'package:notes_buddy/utils/dio/globals.dart';
import 'package:notes_buddy_api_client/notes_buddy_api_client.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper _databaseHelper; // Singleton DatabaseHelper
  static Database _database; // Singleton Database

  String noteTable = 'note_table';
  String colId = 'id';
  String colTitle = 'title';
  String colDescription = 'description';
  String colPriority = 'priority';
  String colColor = 'color';
  String colDate = 'date';
  String synced = 'synced';

  DatabaseHelper._createInstance(); // Named constructor to create instance of DatabaseHelper

  factory DatabaseHelper() {
    _databaseHelper ??= DatabaseHelper._createInstance();
    return _databaseHelper;
  }

  Future<Database> get database async {
    _database ??= await initializeDatabase();
    return _database;
  }

  Future<Database> initializeDatabase() async {
    // Get the directory path for both Android and iOS to store database.
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'notes_buddy.db';

    // Open/create the database at a given path
    var notesDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return notesDatabase;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $noteTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colTitle TEXT, '
        '$colDescription TEXT, $colPriority INTEGER, $colColor INTEGER,$colDate TEXT, $synced INTEGER)');
  }

  // Fetch Operation: Get all note objects from database
  Future<List<Map<String, dynamic>>> getNoteMapList() async {
    Database db = await this.database;

//		var result = await db.rawQuery('SELECT * FROM $noteTable order by $colPriority ASC');
    var result = await db.query(noteTable, orderBy: '$colPriority ASC');
    return result;
  }

  // Insert Operation: Insert a Note object to database
  Future<int> insertNote(NoteResponse note) async {
    final api = NotesBuddyApiClient();
    final noteController = api.getNotesControllerApi();

    var noteReq = NoteRequest((b) => b
      ..title = note.title
      ..description = note.description
      ..color = note.color
      ..priority = note.priority);

    Database db = await this.database;
    var result = await db.insert(noteTable, ApiToDBMapper.fromApiToDb(note));
    noteReq = noteReq.rebuild((p0) => p0.localId = result);

    if (isConnected) {
      await noteController.createANote(noteRequest: noteReq);
    }

    return result;
  }

  // Update Operation: Update a Note object and save it to database
  Future<int> updateNote(NoteResponse note) async {
    if (isConnected) {
      final noteRequest = NoteRequest((b) => b
          ..title = note.title
          ..description = note.description
          ..color = note.color
          ..priority = note.priority
          ..localId = note.id
      );

      final api = NotesBuddyApiClient();
      final noteController = api.getNotesControllerApi();
      await noteController.updateANote(noteId: note.id, noteRequest: noteRequest);
    }
    var db = await this.database;
    var result = await db.update(noteTable, ApiToDBMapper.fromApiToDb(note),
        where: '$colId = ?', whereArgs: [note.id]);
    return result;
  }

  // Delete Operation: Delete a Note object from database
  Future<int> deleteNote(int id) async {
    if (isConnected) {
      final api = NotesBuddyApiClient();
      final noteController = api.getNotesControllerApi();
      await noteController.deleteANote(noteId: id);
    }
    var db = await this.database;
    int result =
        await db.rawDelete('DELETE FROM $noteTable WHERE $colId = $id');
    return result;
  }

  Future<NoteResponse> getNote(int id) async {
    var db = await this.database;
    var result =
        await db.query(noteTable, where: '$colId = ?', whereArgs: [id]);
    log("Res: $result");
    if (result.isEmpty) {
      return null;
    }
    return Note.fromMapObject(result[0]).toApiModal();
  }

  // Get number of Note objects in database
  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> x =
        await db.rawQuery('SELECT COUNT (*) from $noteTable');
    int result = Sqflite.firstIntValue(x);
    return result;
  }

  // Get the 'Map List' [ List<Map> ] and convert it to 'Note List' [ List<Note> ]
  Future<List<NoteResponse>> getNoteList() async {
    var noteMapList = await getNoteMapList(); // Get 'Map List' from database
    int count =
        noteMapList.length; // Count the number of map entries in db table

    List<NoteResponse> noteList = [];
    // For loop to create a 'Note List' from a 'Map List'
    for (int i = 0; i < count; i++) {
      noteList.add(Note.fromMapObject(noteMapList[i]).toApiModal());
    }

    return noteList;
  }
}
