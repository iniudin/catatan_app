class Note {
  String title;
  String description;
  DateTime lastUpdate;

  Note({
    required this.title,
    required this.description,
    required this.lastUpdate,
  });
}

List<Note> noteList = [];
