import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notes_buddy/screens/auth/login.screen.dart';
import 'package:notes_buddy/screens/search_note.screen.dart';
import 'package:notes_buddy/screens/single_note.screen.dart';
import 'package:notes_buddy/services/sqlite.service.dart';
import 'package:notes_buddy/utils/dio/globals.dart';
import 'package:notes_buddy/utils/widgets.dart';
import 'package:notes_buddy_api_client/notes_buddy_api_client.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class NoteList extends StatefulWidget {
  const NoteList({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NoteListState();
  }
}

class NoteListState extends State<NoteList> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  List<NoteResponse> noteList;
  int count = 0;
  int axisCount = 2;

  @override
  Widget build(BuildContext context) {
    if (noteList == null) {
      noteList = [];
      updateListView();
    }

    Widget myAppBar() {
      return AppBar(
        title: Text('Notes Buddy',
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.headline5.fontSize,
                color: Colors.white)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        leading: noteList.isEmpty
            ? Container()
            : IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () async {
                  final NoteResponse result = await showSearch(
                      context: context, delegate: NotesSearch(notes: noteList));
                  if (result != null) {
                    navigateToDetail(result, 'Edit Note');
                  }
                },
              ),
        actions: <Widget>[
          noteList.isEmpty
              ? Container()
              : IconButton(
                  icon: Icon(
                    axisCount == 2 ? Icons.list : Icons.grid_on,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      axisCount = axisCount == 2 ? 4 : 2;
                    });
                  },
                ),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (b) => const LoginPage()));
              },
              icon: const Icon(Icons.logout, color: Colors.white))
        ],
      );
    }

    return Scaffold(
      appBar: myAppBar(),
      body: noteList.isEmpty
          ? Container(
              color: Colors.white,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Click on the add button to add a new note!',
                      style: Theme.of(context).textTheme.bodyText2),
                ),
              ),
            )
          : Container(
              color: Colors.white,
              child: getNotesList(),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final noteItem = NoteResponse((b) => b
            ..priority = 3
            ..color = 0);
          navigateToDetail(noteItem, 'Add Note');
        },
        tooltip: 'Add Note',
        shape: const CircleBorder(
            side: BorderSide(color: Colors.blueAccent, width: 2.0)),
        child: const Icon(Icons.add, color: Colors.blueAccent),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget getNotesList() {
    return StaggeredGridView.countBuilder(
      physics: const BouncingScrollPhysics(),
      crossAxisCount: 4,
      itemCount: count,
      itemBuilder: (BuildContext context, int index) => GestureDetector(
        onTap: () {
          navigateToDetail(noteList[index], 'Edit Note');
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: colors[noteList[index].color],
                border: Border.all(width: 2, color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(8.0)),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          noteList[index].title,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ),
                    Text(
                      getPriorityText(noteList[index].priority),
                      style: TextStyle(
                          color: getPriorityColor(noteList[index].priority)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text(noteList[index].description ?? '',
                            style: Theme.of(context).textTheme.bodyText1),
                      )
                    ],
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(noteList[index].createdAt.toString(),
                          style: Theme.of(context).textTheme.subtitle2),
                    ])
              ],
            ),
          ),
        ),
      ),
      staggeredTileBuilder: (int index) => StaggeredTile.fit(axisCount),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }

  // Returns the priority color
  Color getPriorityColor(int priority) {
    switch (priority) {
      case 1:
        return Colors.red;
        break;
      case 2:
        return Colors.yellow;
        break;
      case 3:
        return Colors.green;
        break;

      default:
        return Colors.yellow;
    }
  }

  // Returns the priority icon
  String getPriorityText(int priority) {
    switch (priority) {
      case 1:
        return '!!!';
        break;
      case 2:
        return '!!';
        break;
      case 3:
        return '!';
        break;

      default:
        return '!';
    }
  }

  // void _delete(BuildContext context, Note note) async {
  //   int result = await databaseHelper.deleteNote(note.id);
  //   if (result != 0) {
  //     _showSnackBar(context, 'Note Deleted Successfully');
  //     updateListView();
  //   }
  // }

  // void _showSnackBar(BuildContext context, String message) {
  //   final snackBar = SnackBar(content: Text(message));
  //   Scaffold.of(context).showSnackBar(snackBar);
  // }

  void navigateToDetail(NoteResponse note, String title) async {
    bool result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => NoteDetail(note: note, appBarTitle: title)));

    if (result == true) {
      updateListView();
    }
  }

  void updateListView() {
    final Future<Database> dbFuture = databaseHelper.initializeDatabase();
    dbFuture.then((database) {
      Future<List<NoteResponse>> noteListFuture = databaseHelper.getNoteList();
      noteListFuture.then((noteList) {
        setState(() {
          this.noteList = noteList;
          count = noteList.length;
          fetchAndSaveLocalNote(this.noteList);
        });
      });
    });
  }

  fetchAndSaveLocalNote(List<NoteResponse> notes) async {
    if (isConnected) {
      final api = NotesBuddyApiClient();
      final noteController = api.getNotesControllerApi();
      List<int> localNotesList = noteList.map((e) => e.id).toList();
      final apiNotesList = await noteController.getNotes();
      log("API NOTES ${apiNotesList.data}");
      List<int> apiNoteIds = apiNotesList.data.map((e) => e.localId).toList();

      List<int> diff;
      if (localNotesList.length >= apiNotesList.data.length) {
        diff = localNotesList.toSet().difference(apiNoteIds.toSet()).toList();
      } else {
        diff = apiNoteIds.toSet().difference(localNotesList.toSet()).toList();
      }

      log("DIFF ${diff.toString()}");

      for (var element in diff) {
        log("LOCAL NOTE ID $element");
        final note = await noteController.getANote(noteId: element);
        log("NT DTA: $note");
        if (note.data.id == null) {
          var localNote = noteList.firstWhere((ele) => ele.id == element);
          log("Note data is NULL");
          final noteRequest = NoteRequest((b) => b
            ..localId = localNote.id
            ..title = localNote.title
            ..description = localNote.description
            ..priority = localNote.priority
            ..color = localNote.color);
          await noteController.createANote(noteRequest: noteRequest);
        } else {
          var localNote = await databaseHelper.getNote(element);
          log("LOCAL NOTE IN ELSE: $localNote");
          if (localNote == null) {
            final lcNote = note.data.rebuild((p0) => p0.id = note.data.localId);

            // if has documents
            if (lcNote.documents.isNotEmpty) {
              // save the photos in the local path
              for (var p0 in lcNote.documents) {
                // getting a directory path for saving
                Directory path = await getApplicationDocumentsDirectory();

                // copy the file to a new path

                // var fromApi = await noteController.getDocument(noteId: lcNote.id, fileName: p0.urlPath);
                // final File newImage = await photos.copy('${path.path}/${lcNote.id}/${p0.urlPath}');
              }
            }

            await databaseHelper.insertNote(lcNote);
          }
          setState(() {
            updateListView();
          });
        }
      }
    }
  }
}
