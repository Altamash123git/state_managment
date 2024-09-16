

/*
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment/block%20executer.dart';
import 'package:state_managment/block_event.dart';
import 'package:state_managment/cubit.dart';

class  update_add extends StatelessWidget{

  bool isupdate;
  int id;
  String title;
  String desc;
  update_add({ this.isupdate=false,  this.id=0, this.title='', this.desc=""});

  TextEditingController titlecontroller=TextEditingController();

  TextEditingController desccontroller= TextEditingController();

  @override
  Widget build(BuildContext context) {

    if(isupdate){
     titlecontroller.text=title ;
     desccontroller.text= desc;
    }
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text(isupdate? "Update Notes": "Add Notes"),
       centerTitle:  true,
     ),
     body:

     Container(
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
                    onPressed: (){
                      if(isupdate){



                        context.read<listcubit>().updatemynotes(title: title, desc: desc, id: id);
                        Navigator.pop(context);
                      }else{

                        context.read<listcubit>().addnotes(title: titlecontroller.text, desc: desccontroller.text);
                        Navigator.pop(context);
                      }
                    },
                     child: Text(
                         isupdate? "update" :"ADD")),
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
           ElevatedButton(onPressed: () async{
             //context.watch<listcubit>().updatemynotes(title: widget.title, desc: widget.desc, id: widget.id);
           }, child: Text("print"))
         ],
       ),
     )
   );
  }
}

*/
