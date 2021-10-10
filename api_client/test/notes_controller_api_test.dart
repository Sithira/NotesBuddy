import 'package:test/test.dart';
import 'package:notes_buddy_api_client/notes_buddy_api_client.dart';


/// tests for NotesControllerApi
void main() {
  final instance = NotesBuddyApiClient().getNotesControllerApi();

  group(NotesControllerApi, () {
    //Future<NoteResponse> createANote(NoteRequest noteRequest) async
    test('test createANote', () async {
      // TODO
    });

    //Future deleteANote(int noteId) async
    test('test deleteANote', () async {
      // TODO
    });

    //Future<NoteResponse> getANote(int noteId) async
    test('test getANote', () async {
      // TODO
    });

    //Future<BuiltList<NoteResponse>> getNotes() async
    test('test getNotes', () async {
      // TODO
    });

    //Future<NoteResponse> updateANote(int noteId, NoteRequest noteRequest) async
    test('test updateANote', () async {
      // TODO
    });

  });
}
