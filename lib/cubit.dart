import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment/dbhelper.dart';
import 'package:state_managment/list_map_state.dart';



/*

class listcubit extends Cubit<cubitprovider>{
  DBhelper dBhelper;
  listcubit({required this.dBhelper}) : super(initial_state() );

  void addnotes({required String title,required String desc }) async{
    emit(loading_state());

    bool check= await dBhelper.createnote(title: title, desc: desc);
    if(check){
      var data = await dBhelper.getnotes();
      //newdata= state.mdata;
      emit(loaded_state(notes: data));

    } else{
      emit(error_state(error_msg: "note not added"));
    }
    //List<Map<String, dynamic>> newdata
    //state.mdata= await dBhelper.getnotes();
    //emit(cubitprovider(mdata: mdata))
    //List<Map<String, dynamic>> newdat= await state.

  }
  void getmynotes() async{
    emit(loading_state());
    var data = await dBhelper.getnotes();
    //newdata= state.mdata;
    emit(loaded_state(notes: data));

  }
void updatemynotes({required String title,required String desc, required int id }) async {
    emit(loading_state());

  bool check= await dBhelper.updatenotes(title: title, desc: desc, id: id);
  if(check){
    var data= await dBhelper.getnotes();
    emit(loaded_state(notes: data));
  }
}
void deletemynotes({required int id}) async{
    emit(loading_state());
    bool check=await dBhelper.deletenotes(id: id);
    if(check){
     var data= await dBhelper.getnotes();
      emit(loaded_state(notes:data ));
    }
}
}
*/
