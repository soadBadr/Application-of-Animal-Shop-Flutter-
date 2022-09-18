import 'package:flutter/material.dart';
import 'package:project_app/project_final/components.dart';
import 'package:project_app/project_final/database.dart';

class New_Register  extends StatefulWidget {
  @override
  State<New_Register> createState() => _New_RegisterState();
}

class _New_RegisterState extends State<New_Register> {
  @override
  void initState() {
    // TODO: implement initState
    d=DatabaseApp();
  }
  var Email = TextEditingController();
  var Password = TextEditingController();

  DatabaseApp d;
  bool z = true ;

  var ziad= GlobalKey<FormState>() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('New Register' , style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/image/zz.jpg') ,
                  fit: BoxFit.cover,)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: ziad,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Textform(
                  function: (String value){
                    if (value.isEmpty)
                      return 'You have to enter the First Name' ;
                  },
                  label: 'First Name' ,
                  hint: 'First Name' ,
                  type: TextInputType.text ,
                  prefix: Icon(Icons.content_paste) ,
                ) ,
                SizedBox(height: 15,) ,
                Textform(
                  function: (String value){
                    if (value.isEmpty)
                      return 'You have to enter the Last Name' ;
                  },
                  label: 'Last Name' ,
                    hint: 'Last Name' ,
                  type: TextInputType.text ,
                  prefix: Icon(Icons.content_paste) ,
                ) ,
                SizedBox(height: 15,) ,
                Textform(
                  function: (String value){
                    if (value.isEmpty)
                      return 'You have to enter the Email' ;
                  },
                  con: Email,
                  hint: 'Enter you Email' ,
                  label: 'Email' ,
                  prefix: Icon(Icons.email) ,
                  type: TextInputType.emailAddress ,

                ) ,
                SizedBox(height: 15,) ,
                Textform(
                  obscure: z,
                  function: (String value){
                    if (value.isEmpty)
                      return 'You have to enter the phone' ;
                  },
                  con: Password,
                  label: 'Password' ,
                  hint: 'Enter your Enter' ,
                  type: TextInputType.phone ,
                  prefix: Icon(Icons.edit) ,
                  SUFFIX: IconButton(onPressed: (){
                    setState(() {
                      z=!z ;
                    });
                  }, icon:z?Icon(Icons.visibility):Icon(Icons.visibility_off)) ,
                ) ,
                SizedBox(height: 15,) ,
                MaterialButton(color: Colors.green,onPressed: (){
                if (ziad.currentState.validate())
                  {
                    Navigator.pop(context) ;
                    d.insertData(Email.text , Password.text) ;
                      print(d.mylist) ;
                  }
                } , child: Text('Done'),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
