import 'package:flutter/material.dart';
class myinfo extends StatelessWidget {
  const myinfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.23,child:  Container(
    color: Color(0xFF242430),
    child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [Spacer(flex: 2,),
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/hi.JPG'),
        ), Spacer(), Text("Pratham Darji",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
       Spacer(),  Text("Flutter Dart & Firebase Developer",textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF8B8B8D),fontWeight: FontWeight.w200,height: 1.5)),
         Spacer(flex: 2,),
      ],
    ),
             ),);
  }
}
