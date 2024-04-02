import 'package:flutter/material.dart';
import 'package:notekeeper_application/screens/note_list.dart';

class NoteDetail extends StatefulWidget {

   NoteDetail(String title, {super.key});

  @override
  State<NoteDetail> createState() => __NoteDetailState();
}

class __NoteDetailState extends State<NoteDetail> {
  
  static final _priorities = ['High', 'low'];
  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.titleLarge;
    TextEditingController titleController = TextEditingController();
    TextEditingController discriptionController = TextEditingController();
    String title;
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: DropdownButton(
                items: _priorities.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),
                style: textStyle,
                value: 'low',
                onChanged: (valueSelectedByUser) {
                  setState(() {
                    debugPrint('User selected $valueSelectedByUser');
                  });
                },
              ),
            ),

            //Second Item

            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: titleController,
                style: textStyle,
                onChanged: (value) => {
                  debugPrint(
                      "Something changed in title text field ${titleController.text}"),
                },
                decoration: InputDecoration(
                  labelText: 'Title',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),

            //Third Item

            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: discriptionController,
                style: textStyle,
                onChanged: (value) => {
                  debugPrint(
                      "Something changed in title text field ${titleController.text}"),
                },
                decoration: InputDecoration(
                  labelText: 'Description',
                  labelStyle: textStyle,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ),

            //Forth Item

            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);

                          });

                          // ignore: deprecated_member_use
                        },
                        child: const Text(
                          "Save",
                          textScaleFactor: 1.5,
                        )),
                  ),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pop((context));
                          });

                          // ignore: deprecated_member_use
                        },
                        child: const Text(
                          "Delete",
                          // ignore: deprecated_member_use
                          textScaleFactor: 1.5,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
