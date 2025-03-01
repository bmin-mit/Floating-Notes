class Note {
  final String title;
  final String content;

  Note({this.title = "", this.content = ""});

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(title: json['title'], content: json['content']);
  }

  Map<String, dynamic> toJson() {
    return {'title': title, 'content': content};
  }
}
