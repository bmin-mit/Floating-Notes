import 'package:uuid/uuid.dart';

class Note {
  late final String id;
  final String title;
  final String content;

  Note({String? id, this.title = "", this.content = ""}) {
    if (id == null) {
      this.id = Uuid().v4();
    }
  }
}
