
import 'package:flutter/material.dart';
import 'package:project_app/project_final/Drawer.dart';
import 'package:project_app/project_final/android.dart';
import 'package:project_app/project_final/gallery.dart';

import 'package:url_launcher/url_launcher.dart';
class Sky extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black87) ,
                  currentAccountPicture: CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzNoM2CoMU91VxOeK3z1DvuHw7ZvjkYCpyCw&usqp=CAU'),
                  ),
                  accountName: Text('Soad Badr'),
                  accountEmail: Text('Soad22@gmail.com')),
              Card(
                color: Colors.green,
                child: ListTile(
                  title: Text('My account',
                    style: TextStyle(
                        fontSize: 20
                        ,color: Colors.black
                    ),),
                  trailing: Icon(Icons.account_balance_outlined),
                ),
              ),
              Card(
                color: Colors.green,
                child: ListTile(
                  title: Text('Setting',
                    style: TextStyle(
                        fontSize: 20
                        ,color: Colors.black
                    ),),
                  trailing: Icon(Icons.settings),
                ),
              ),
              Card(
                color: Colors.green,
                child: ListTile(
                  title: Text('Change account',
                    style: TextStyle(
                        fontSize: 20
                        ,color: Colors.black
                    ),),
                  trailing: Icon(Icons.account_circle_outlined),
                ),
              ),
              Card(
                color: Colors.green,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>aboutuss())) ;
                  },
                  child: ListTile(
                    title: Text('About US',
                      style: TextStyle(
                          fontSize: 20
                          ,color: Colors.black
                      ),),
                    trailing: Icon(Icons.book),
                  ),
                ),
              ),
              Card(
                color: Colors.green,
                child: ListTile(
                  title: Text('Log Out',
                    style: TextStyle(
                        fontSize: 20
                        ,color: Colors.black
                    ),),
                  trailing: Icon(Icons.login_outlined),
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          //actions: [
           // InkWell( onTap: ()async=>await launch('https://www.facebook.com/ziad.2861'),child: Icon(Icons.facebook,size: 35,)) ,
         // ],
          backgroundColor: Colors.green,
          title: Text('Animal House' , style: TextStyle(color: Colors.black),),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Animals',
              ),
              Tab(
                icon: Icon(Icons.food_bank),
                text: 'Dry Food',
              ),
              Tab(
                icon: Icon(Icons.book),
                text: 'About Us',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Gallery(),
            Android(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,) ,
                    Text('About Us' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold , color: Colors.teal),) ,
                    SizedBox(height: 10,),
                    Text('The shop was opened in 1998 in Zamalek by Dr. Mohammed Metwally in order for the  animal to enjoy a comfortable and warm residence. The shop has been achieving this goal for the past years and now our decision is that you can buy these animal online without any hardship and tiredness and ensure that you deliver the animal safely to your home',
                      style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold ,color: Colors.black),),
                    SizedBox(height: 10,) ,
                    Row(
                      children: [
                        Text('The address:', style: TextStyle(fontSize: 20 , color: Colors.teal , fontWeight: FontWeight.bold),) ,
                        Text('9b Abu Alfada Street–Zamalek' ,style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),),
                      ] ,
                    ) ,
                    SizedBox(height: 10,) ,
                    Text('Telephone number : 01247849259 ' ,style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold),)
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
