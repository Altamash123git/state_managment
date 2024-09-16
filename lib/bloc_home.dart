import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment/add_update_bloc.dart';
import 'package:state_managment/block%20executer.dart';
import 'package:state_managment/block_event.dart';
import 'package:state_managment/block_event.dart';
import 'package:state_managment/block_event.dart';
import 'package:state_managment/block_state.dart';

import 'add_update_notes.dart';
import 'block_event.dart';
import 'block_event.dart';
import 'block_event.dart';
import 'block_event.dart';
import 'cubit.dart';
import 'dbhelper.dart';

class home extends StatelessWidget {
 
  List<Map<String,dynamic>> allnotes=[];

  @override
  Widget build(BuildContext context) {

    context.read<blockexecuter>().add(initialnotes());
    return Scaffold(
      body:
     BlocBuilder<blockexecuter,dabtabsestate>(builder: (_,state){
       var allnotes= state.mdata;

       return allnotes.isNotEmpty ? ListView.builder(
         itemCount: allnotes.length,
           itemBuilder: (c,index){

         //final notes= state.mdata[index];
         return ListTile(

           title: Text(state.mdata[index][DBhelper.Column_note_title]),
           subtitle: Text(allnotes[index][DBhelper.Column_note_desc]),
           trailing: Container(
             width: 100,
             //height: ,
             child: Row(
               children: [
                 IconButton(onPressed: (){
                   //context.read<blockexecuter>().add(updatenotes(id: allnotes[index][DBhelper.Column_note_id], title:"hlo ni hota, helo hota h ", desc:  allnotes[index][DBhelper.Column_note_desc]));
                   Navigator.push(context, MaterialPageRoute(builder: (c)=>add_update_bloc(isupdate: true,title:allnotes[index][DBhelper.Column_note_title], desc: allnotes[index][DBhelper.Column_note_desc] ,id:allnotes[index][DBhelper.Column_note_id] )));
                 }, icon: Icon(Icons.edit,color: Colors.green,)),
                 SizedBox(
                   width: 3,
                 ),
                 IconButton(onPressed: (){
                   context.read<blockexecuter>().add(deletenotes(id: allnotes[index][DBhelper.Column_note_id]));

                 }, icon: Icon(Icons.delete,color: Colors.red,))

               ],
             ),
           ),

         );
       }): Container(
         alignment: Alignment.center,
         child:  Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("No notes yet"),
             SizedBox(height: 15,),
             ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (c)=>add_update_bloc()));
             }, child: Text("Add Notes"))
           ],
         )
       );
     }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        /*Navigator.push(context,MaterialPageRoute(builder: (c)=>update_add()));*/
        Navigator.push(context, MaterialPageRoute(builder: (c)=>add_update_bloc()));

      },child: Icon(Icons.add),) ,

    );


  }
}
