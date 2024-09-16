import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/bloc_home.dart';
import 'package:state_managment/block%20executer.dart';
import 'package:state_managment/dbhelper.dart';

import 'cubit.dart';
import 'homepage.dart';

void main() {
  runApp(
      BlocProvider(
        create:(_) =>  blockexecuter(dBhelper: DBhelper.getInstance()),
        child:
        const MyApp()),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:home(),
    );
  }
}
