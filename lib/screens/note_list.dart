import 'package:flutter/material.dart';
import 'package:notes_app/model/note.dart';
import 'package:notes_app/screens/note_detail.dart';

import '../utils/dateformat.dart';

class NoteList extends StatelessWidget {
  final Note note;

  const NoteList({required this.note});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(note.title),
      subtitle: Text(note.description),
      trailing: Text(dateTimeParse(note.lastUpdate)),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NoteDetail(noteItem: note)),
      ),
    );
  }
}
