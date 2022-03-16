import 'package:flutter/material.dart';
import 'package:notes_app/model/note.dart';

class NoteAdd extends StatefulWidget {
  const NoteAdd({Key? key}) : super(key: key);

  @override
  State<NoteAdd> createState() => _NoteAddState();
}

class _NoteAddState extends State<NoteAdd> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Catatan"),
        actions: [
          IconButton(
              onPressed: () {
                noteList.add(Note(
                    title: titleController.text,
                    description: descriptionController.text,
                    lastUpdate: DateTime.now()));
                Navigator.pop(context);
              },
              icon: const Icon(Icons.save))
        ],
      ),
      body: SafeArea(
        child: Column(children: [
          const SizedBox(height: 10),
          TextFormField(
            controller: titleController,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            decoration: const InputDecoration(
              hintText: "Judul",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: descriptionController,
                keyboardType: TextInputType.multiline,
                maxLines: 20,
                style: const TextStyle(fontSize: 16),
                decoration: const InputDecoration(
                  isCollapsed: true,
                  hintText: "Deskripsi",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
