import 'package:notes_buddy_api_client/notes_buddy_api_client.dart';

class ApiToDBMapper {
  static Map<String, dynamic> fromApiToDb(NoteResponse note) {
    var map = <String, dynamic>{};
    map['id'] = note.id;
    map['title'] = note.title;
    map['description'] = note.description;
    map['priority'] = note.priority;
    map['color'] = note.color;
    map['date'] = note.createdAt;
    return map;
  }
}
