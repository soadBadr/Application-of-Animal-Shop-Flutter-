import 'package:flutter/material.dart';
import 'package:project_app/project_final/counter.dart';

class Mess extends StatelessWidget
{
  Map m ;
  Mess(Map t)
  {
    this.m = t ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(m['title'] , style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Hero(tag:m['title'],child: Image(image: m['icon'] ,height: 200,width: double.infinity, fit: BoxFit.fill,)) ,
              SizedBox(height: 10,) ,
              Text(m['Mess'] , style: TextStyle(fontSize: 20 ,), ) ,
              SizedBox(height: 10,) ,
              Text('price is ${m['price']} EGP',style: TextStyle(fontSize: 20 , color: Colors.teal ,fontWeight: FontWeight.bold), ),
              SizedBox(height: 10,),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CounterApp(t: m))) ;
              } , child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Add Cart' ,) ,
                  SizedBox(width: 10,),
                  Icon(Icons.add_circle ,color: Colors.black45,)
                ],
              ) ,color: Colors.green,)
            ],
          ),
        ),
      ),
    );
  }
}
