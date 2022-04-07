import 'package:flutter/material.dart';
import 'package:notes_app/model/note.dart';
import 'package:notes_app/screens/note_add.dart';
import 'package:notes_app/screens/note_detail.dart';
import 'package:notes_app/screens/note_list.dart';
import 'package:notes_app/utils/dateformat.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// function that rebuild listview
  void _refreshTodo() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catatan"),
      ),
      body: SafeArea(
        child: noteList.isNotEmpty
            ? ListView.builder(
                itemCount: noteList.length,
                itemBuilder: ((context, index) {
                  return NoteList(
                    note: noteList[index],
                  );
                }),
              )
            : const Center(child: Text("Catatan kosong")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NoteAdd()))
              .then((value) => _refreshTodo());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
