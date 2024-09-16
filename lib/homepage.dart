import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment/add_update_notes.dart';
import 'package:state_managment/cubit.dart';
import 'package:state_managment/dbhelper.dart';
import 'package:state_managment/list_map_state.dart';
/*

class homepage extends StatelessWidget {
  List<Map<String, dynamic>> allNotes = [];
  @override
  Widget build(BuildContext context) {
    context.read<listcubit>().getmynotes();

    return Scaffold(
        body: BlocBuilder<listcubit, cubitprovider>(builder: (_, state) {
      if (state is loading_state) {
        print("kuch ni");
        return Center(

          child: CircularProgressIndicator(),
        );
      }
      if (state is error_state){
        print("kya haal h");
        return Center(

          child: Text("error :${state.error_msg}"),

        );
      }
       if(state is loaded_state) {

        print("hlo");
        allNotes = state.notes;
      return  allNotes.isNotEmpty
            ? ListView.builder(

                itemCount: allNotes.length,
                itemBuilder: (_, i) {

                  return 
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        tileColor: Colors.blue,


                            title: Text(allNotes[i][DBhelper.Column_note_title]),
                            subtitle: Text(allNotes[i][DBhelper.Column_note_desc]),
                            trailing: SizedBox(
                              width: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (c) => update_add(
                                                      isupdate: true,
                                                      id: allNotes[i]
                                                          [DBhelper.Column_note_id],
                                                      title: allNotes[i][DBhelper
                                                          .Column_note_title],
                                                      desc:allNotes[i][DBhelper
                                                          .Column_note_desc],
                                                    )));
                                        //context.read<listcubit>().updatemynotes(title: "altamash nigga", desc: "", id: mydata[i][DBhelper.Column_note_id]);
                                      },
                                      icon: Icon(Icons.edit)),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        context.read<listcubit>().deletemynotes(
                                            id:allNotes[i][DBhelper.Column_note_id]);
                                      },
                                      icon: Icon(Icons.delete, color: Colors.red)),
                                ],
                              ),
                            )),
                    );
                })
            : Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("no notes yet"),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (c) => update_add()));
                        },
                        child: Text("add  notes"))
                  ],
                ),
              );
      }
      return Container();

    }),
        floatingActionButton:
            BlocBuilder<listcubit, cubitprovider>(builder: (c, state) {
      if (state is loaded_state) {
        if (state.notes.isNotEmpty){

          return FloatingActionButton(
            onPressed: () async{

              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => update_add()));

            },

            child: Icon(Icons.add),
          );
        }
      }
      return Container();
    }));
  }
}
*/
