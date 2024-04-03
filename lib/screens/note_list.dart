import 'package:flutter/material.dart';
import 'package:notekeeper_application/screens/note_details.dart';

class NoteList extends StatefulWidget {
  const NoteList({super.key});

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notes"),
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToDetail('Add Note');
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  ListView getNoteListView() {
    TextStyle? titleStyle = Theme.of(context).textTheme.titleSmall;
    return ListView.builder(
        itemCount: count,
        itemBuilder: ((context, index) {
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Icon(Icons.keyboard_arrow_right),
              ),
              title: Text(
                "Dummy Title",
                style: titleStyle,
              ),
              subtitle: const Text("dummy data"),
              trailing: const Icon(
                Icons.delete,
                color: Colors.grey,
              ),
              onTap: () {
                debugPrint("ListTile Tapped");
                navigateToDetail('Edit Note');
              },
            ),
          );
        }));
  }

  void navigateToDetail(String title) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => NoteDetail(title: title)));
  }
}
