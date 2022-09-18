import 'package:flutter/material.dart';
import 'detials.dart';
class Android extends StatelessWidget
{
  List data_p =[
    {
      'title': 'Royal Canine dry ' ,
      'icon' : NetworkImage('https://happet.net/wp-content/uploads/2019/12/royal-canin-hairball-care2kg-555x650.jpg'),
      'Mess': 'food for cats',
      'price': 75 ,
    } ,

    {
      'title': 'Leonardo dry' ,
      'icon' : NetworkImage('https://happet.net/wp-content/uploads/2020/04/image-3-555x650.jpg'),
      'Mess': 'food for cats',
      'price': 200 ,
    } ,
    {
      'title': 'Happycat dry ' ,
      'icon' : NetworkImage('https://happet.net/wp-content/uploads/2020/04/N15912839A_1-555x650.jpg'),
      'Mess': 'food for cats',
      'price': 100 ,
    } ,
    {
      'title': 'BewiCat dry ' ,
      'icon' : NetworkImage('https://happet.net/wp-content/uploads/2020/06/rs1040_bewicat_adult_20kg_l_110517_mg-hpr-555x650.jpg'),
      'Mess': 'food for cats',
      'price': 125 ,
    } ,
    {
      'title': 'RMera cat dry ' ,
      'icon' : NetworkImage('https://happet.net/wp-content/uploads/2019/12/Mera-Exclusive-Classic-Cat-Poultry-1-555x650.jpg'),
      'Mess': 'food for cats',
      'price': 170 ,
    } ,
    {
      'title': 'Josicat dry' ,
      'icon' : NetworkImage('https://happet.net/wp-content/uploads/2019/12/josi-cat-poultrynew-555x650.jpg'),
      'Mess': 'food for cats',
      'price': 180 ,
    } ,
    {
      'title': 'Wellness CORE Ocean' ,
      'icon' : NetworkImage('https://www.almrsal.com/wp-content/uploads/2016/02/Wellness-CORE-Ocean-Formula-732x1024.jpg'),
      'Mess': 'food for dogs',
      'price': 200,
    } ,
    {
      'title': 'Wellness CORE Reduced ' ,
      'icon' : NetworkImage('https://www.almrsal.com/wp-content/uploads/2016/02/Wellness-CORE-Reduced-Fat-Formula.jpg'),
      'Mess': 'food for dogs',
      'price': 170 ,
    } ,
    {
      'title': 'Taste of the Wild ' ,
      'icon' : NetworkImage('https://www.almrsal.com/wp-content/uploads/2016/02/Taste-of-the-Wild-High-Prairie-Canine-Formula.jpg'),
      'Mess': 'food for dogs',
      'price': 130,
    } ,
    {
      'title': 'Natural Balance Limited' ,
      'icon' : NetworkImage('https://www.almrsal.com/wp-content/uploads/2016/02/Natural-Balance-Limited-Ingredient-Diet.jpg'),
      'Mess': 'food for dogs',
      'price': 120,
    } ,
    {
      'title': 'CANIDAE All Life Stages' ,
      'icon' : NetworkImage('https://www.almrsal.com/wp-content/uploads/2016/02/CANIDAE-All-Life-Stages-Formula.jpg'),
      'Mess': 'food for dogs',
      'price': 120 ,
    } ,

  ] ;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for(int i =0 ; i<data_p.length ; i++)
            Card(
              color: Colors.grey[200],
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=> Mess(data_p[i]))) ;
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Hero(
                            tag: data_p[i]['title'],
                            child: CircleAvatar(
                              backgroundImage:  data_p[i]['icon'],
                              radius: 20,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data_p[i]['title'],
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold ,

                                ),
                              ),
                              Text(
                                data_p[i]['Mess'],
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ) ,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
