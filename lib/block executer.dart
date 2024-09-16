import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment/block_event.dart';
import 'package:state_managment/block_state.dart';
import 'package:state_managment/dbhelper.dart';
import 'package:state_managment/list_map_state.dart';

class blockexecuter extends Bloc<databaseevent, dabtabsestate> {
  DBhelper dBhelper;
  blockexecuter({required this.dBhelper}) : super(dabtabsestate(mdata: [])) {
    on<addnotes>((event, emit) async {
      bool check =
          await dBhelper.createnote(title: event.title, desc: event.desc);
      if (check) {
        List<Map<String, dynamic>> currentData = await dBhelper.getnotes();
        emit(dabtabsestate(mdata: currentData));
      }
    });
    on<updatenotes>((event, emit) async {
      bool check = await dBhelper.updatenotes(
          title: event.title, desc: event.desc, id: event.id);
      if (check) {
        List<Map<String, dynamic>> currentData = await dBhelper.getnotes();
        emit(dabtabsestate(mdata: currentData));
      }
    });
    on<initialnotes>((event, emit) async {
      var currentdata = await dBhelper.getnotes();
      emit(dabtabsestate(mdata: currentdata));
    });
    on<deletenotes>((event, emit) async {
      bool check = await dBhelper.deletenotes(id: event.id);
      if (check) {
        var currentdata = await dBhelper.getnotes();
        emit(dabtabsestate(mdata: currentdata));
      }
    });
  }
}
