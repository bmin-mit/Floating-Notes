class Note {
  final String title;
  final String content;
  final DateTime date;

  Note({required this.title, required this.content, required this.date});

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      title: json['title'],
      content: json['content'],
      date: DateTime.parse(json['date']),
    );
  }

  Map<String, dynamic> toJson() {
    return {'title': title, 'content': content, 'date': date.toIso8601String()};
  }
}
