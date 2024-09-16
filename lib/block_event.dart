abstract class databaseevent{}
//class initialgetnotes extends databaseevent{}
class addnotes extends databaseevent{

  String title;
  String desc;
  addnotes({ required this.title, required this.desc});
}
class updatenotes extends databaseevent{
  int id;
  String title;
  String desc;
  updatenotes({required this.id, required this.title, required this.desc});

}
class deletenotes extends databaseevent{
  int id;
  deletenotes({required this.id});
}
class initialnotes extends databaseevent{
  /*List<Map<String,dynamic>> mdata;
  initialnotes({required this.mdata});*/
}