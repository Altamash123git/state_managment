import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment/add_update_notes.dart';
import 'package:state_managment/block%20executer.dart';
import 'package:state_managment/block_event.dart';

class add_update_bloc extends StatelessWidget {
  bool isupdate;
  String title;
  String desc;
  int id;
  add_update_bloc(
      {this.title = "", this.desc = "", this.id = 0, this.isupdate = false});

  TextEditingController titlecontroller = TextEditingController();

  TextEditingController desccontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (isupdate) {
      titlecontroller.text = title;
      desccontroller.text = desc;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(isupdate ? "Update" : "Add notes"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: TextField(
                controller: titlecontroller,
                decoration: InputDecoration(
                    label: Text("title"),
                    hintText: "enter title",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: TextField(
                controller: desccontroller,
                maxLines: 3,
                minLines: 2,
                decoration: InputDecoration(
                    label: Text("description"),
                    hintText: "enter desc",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                      onPressed: () async {
                        if (isupdate) {
                          context.read<blockexecuter>().add(
                              updatenotes(id: id, title: title, desc: desc));

                          Navigator.pop(context);
                        } else {
                          context.read<blockexecuter>().add(addnotes(
                              title: titlecontroller.text,
                              desc: desccontroller.text));
                          Navigator.pop(context);
                        }
                      },
                      child: Text(isupdate ? "update" : "ADD")),
                ),
                Expanded(
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("CANCEL")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
