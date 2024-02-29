import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class animatedtexts extends StatelessWidget {
  const animatedtexts({
    super.key,
  });





  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child:Column( mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
        children: [
          FittedBox(child: Text("Education:",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 19),)),SizedBox(width: defaultPadding/2,),
          FittedBox(child: Text("KJ Somaiya Institute of technology",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),))
        ],   ), 
        Row(
        children: [
          Text("Stream:",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 19),),
          SizedBox(width: defaultPadding/2,),
          Text("Computer Engineering",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),)
        ],
      
      ),
        ],
      ),
    );
  }
}
