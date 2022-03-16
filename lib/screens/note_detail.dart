import 'package:flutter/material.dart';
import 'package:notes_app/model/note.dart';

import '../utils/dateformat.dart';

class NoteDetail extends StatelessWidget {
  final Note noteItem;

  const NoteDetail({
    Key? key,
    required this.noteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                noteItem.title,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text("Diperbarui: " + dateTimeParse(noteItem.lastUpdate)),
              const SizedBox(height: 20),
              Text(
                noteItem.description,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
