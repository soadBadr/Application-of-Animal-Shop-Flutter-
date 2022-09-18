
import 'package:flutter/material.dart';
import 'package:project_app/project_final/sqliteapp.dart';



void main ()
{
  runApp(MyApp()) ;
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home: Welcome(),
      home: SqliteApp(),
      debugShowCheckedModeBanner: false,
    );
  }

}