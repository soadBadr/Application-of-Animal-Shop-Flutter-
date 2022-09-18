import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:project_app/project_final/Sky.dart';
import 'package:project_app/project_final/countStat.dart';
import 'package:project_app/project_final/logicStat.dart';


class CounterApp extends StatelessWidget {
  List ww =[];
  CounterApp ({Map t})
  {
    ww.add(t) ;
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create:(context)=>CounterCubit(),
    child: BlocConsumer<CounterCubit,CounterState> (
    listener: (context,state){},
    builder:(context,state) {
      var obj=CounterCubit.getObject (context);
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Card' ,style: TextStyle(color: Colors.black),),
          centerTitle: true,
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: double.infinity,
            child: Column(
                children: [
                  for(int i =0 ; i<ww.length ; i++)
                    Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: ww[i]['icon'],
                              radius: 25,
                            ),
                            SizedBox(width: 10,) ,
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(ww[i]['title']),
                                  SizedBox(height: 3,),
                                  Text('price is ${ww[i]['price']}' , style: TextStyle(fontSize: 15),) ,
                                ],
                              ),
                            ) ,
                            SizedBox(width: 55,) ,
                            FloatingActionButton(
                              backgroundColor: Colors.green,
                              mini: true,
                              child: Icon(Icons.add,),
                              onPressed: (){
                                obj.plusC() ;
                              },
                            ),
                            SizedBox(width: 10,) ,
                            Text(obj.c.toString() , style: TextStyle(color: Colors.black ,fontSize: 20 , fontWeight: FontWeight.bold),) ,
                            SizedBox(width: 10,) ,
                            FloatingActionButton(
                              backgroundColor: Colors.green,
                              mini: true,
                              child: Icon(Icons.minimize,),
                              onPressed: (){
                                obj.munsC() ;
                              },
                            ),

                          ],


                        ),
                        SizedBox(height: 15,) ,
                        Row(
                          children: [
                            SizedBox(height: 17,),
                            Text ('The number of ${ww[i]['title']} is ' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold ,),) ,
                            Text ('${obj.c} ' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.green),maxLines: 2,) ,
                          ],
                        ),
                        SizedBox(height: 17,),
                        Row(
                          children: [
                        Text ('The Total price of  ${ww[i]['title']} is' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                        Text (' ${obj.c*ww[i]['price'] }' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold ,color: Colors.green) ,maxLines: 2,),
                      ],
                        ) ,
                        SizedBox(height: 15,),
                        MaterialButton(color: Colors.green,onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Sky())) ;
                        } , child: Text('Confirm' , style: TextStyle(fontSize: 20),),)
                    ]),

                ]

            ),
          ),
        ),
      );
   },
    ),
    );
  }
}