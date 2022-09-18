import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:iti/project_final/sqliteapp.dart';
import 'package:lottie/lottie.dart';


class Welcome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.green,
        title: DefaultTextStyle(
          style: TextStyle(color: Colors.black, fontSize: 20),
          child: AnimatedTextKit(pause: Duration(milliseconds: 1000),animatedTexts: [
            TyperAnimatedText('Animal House' ) ,
          ]),
        ),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.network('https://assets8.lottiefiles.com/packages/lf20_q58jqa8y.json'),
            InkWell( onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SqliteApp()));
            },child: Lottie.network('https://assets6.lottiefiles.com/datafiles/ksKzGZ3Hm2GIN7d/data.json')),
          ],
        ),
      ),
    );
  }
}
