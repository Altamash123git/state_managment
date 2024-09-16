 abstract class  cubitprovider{

}
 class loading_state extends cubitprovider{}
 class initial_state extends cubitprovider{}
 class loaded_state extends cubitprovider{
  List<Map<String,dynamic>> notes;
  loaded_state({ required this.notes});
 }
 class error_state extends cubitprovider{
  String error_msg;
  error_state({required this.error_msg});
 }