import 'package:flutter/material.dart';
import 'package:project_app/project_final/Sky.dart';
import 'package:project_app/project_final/components.dart';
import 'package:project_app/project_final/new.dart';

import 'database.dart';



class SqliteApp extends StatefulWidget {
  @override
  _SqliteAppState createState() => _SqliteAppState();
}

class _SqliteAppState extends State<SqliteApp> {
  bool ziad = true ;
  var email = TextEditingController() ; 
  var password =TextEditingController(); 
  var keyform = GlobalKey<FormState>() ; 
  DatabaseApp d =DatabaseApp();
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Login' , style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body:Container(
    decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage('assets/image/zz.jpg') ,
    fit: BoxFit.cover,)),
        child: Form(
          key:keyform ,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Textform(
              function: (String value){
                bool t = false ;
                if (value.isEmpty)
                  return 'You have to enter the email';
                for (int i = 0 ; i<d.mylist.length ; i++)
                {
                  if (email.text == d.mylist[i]['name']) {
                    t = true ;
                  }
                }
                if (t== false)
                {
                  return 'Email isn\'t found' ;
                }
              },
              con: email ,
              hint: 'Enter you Email' ,
              label: 'Email' ,
              prefix: Icon(Icons.email) ,
              type: TextInputType.emailAddress ,
            ) ,
            SizedBox(height: 15,) ,
            Textform(
                function: (String value){
                  bool t = false ;
                  if (value.isEmpty)
                    return 'You have to enter the password' ;
                  for (int i = 0 ; i<d.mylist.length ; i++)
                  {
                    if (password.text == d.mylist[i]['password']) {
                      t = true ;
                    }
                  }
                  if (t== false)
                  {
                    return 'Password isn\'t found' ;
                  }

                },
                con: password ,
                hint: 'Enter you Password' ,
                label: 'Password' ,
                SUFFIX: IconButton(onPressed: (){
                  setState(() {
                    ziad=!ziad ;
                  });
                }, icon:ziad?Icon(Icons.visibility):Icon(Icons.visibility_off)) ,
                type: TextInputType.visiblePassword ,
                obscure: ziad ,
                prefix: Icon(Icons.edit)
            ),
            SizedBox(height: 15,) ,
            MaterialButton(color: Colors.green,onPressed: (){
              if(keyform.currentState.validate())
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Sky())) ;
              }
            } ,child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Sign in' , style: TextStyle( fontSize: 10 , fontWeight: FontWeight.bold),) ,
                SizedBox(width: 5,) ,
                Icon(Icons.login) ,
              ],
            ),) ,
            SizedBox(height: 10,) ,
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>New_Register())) ;
            }, child: Text('New Register?!',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal.withOpacity(1)),))
          ],
            ),
        ),
      ),
    ) ;
  }
}
