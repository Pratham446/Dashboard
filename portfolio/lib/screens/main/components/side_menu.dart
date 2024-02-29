import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/main/components/animatedcircullarprogressindicator.dart';
import 'package:portfolio/screens/main/components/my_info.dart';

class sidemenu extends StatelessWidget {
  const sidemenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          myinfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Residence", style: TextStyle(color: Colors.white)),
                    Text("India", style: TextStyle(color: Color(0xFF8B8B8D))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("City", style: TextStyle(color: Colors.white)),
                    Text("Mumbai", style: TextStyle(color: Color(0xFF8B8B8D))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Age", style: TextStyle(color: Colors.white)),
                    Text("19", style: TextStyle(color: Color(0xFF8B8B8D))),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Divider(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Skills", style: TextStyle(color: Colors.white)),
                ),
                Row(
                  children: [
                    Expanded(
                        child: animatedcircularprogressindicator(
                      percent: 0.8,
                      label: "flutter",
                    )),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Expanded(
                        child: animatedcircularprogressindicator(
                      percent: 0.72,
                      label: "Dart",
                    )),
                    SizedBox(
                      width: defaultPadding,
                    ),
                    Expanded(
                        child: animatedcircularprogressindicator(
                      percent: 0.65,
                      label: "Firebase",
                    )),
                  ],
                ),
                coding(),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class coding extends StatelessWidget {
  const coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: TextStyle(color: Colors.white),
          ),
        ),
        animatedlinearprogressindicator(
          percent: 0.7,
          label: "Python",

        ),
        animatedlinearprogressindicator(
          percent: 0.68,
          label: "Dart",

        ),
        animatedlinearprogressindicator(
          percent: 0.9,
          label: "Flutter",

        ),
         animatedlinearprogressindicator(
          percent: 0.75,
          label: "Java",

        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Knowledge",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
               Row(
              children: [
                SvgPicture.asset("assets/icons/check.svg"),
                SizedBox(width: defaultPadding/2,),
                Text("Flutter, Dart"),
            
              ],
            ),
             Row(
              children: [
                SvgPicture.asset("assets/icons/check.svg"),
                SizedBox(width: defaultPadding/2,),
                Text("Android, Kotlin Development"),
            
              ],
            ),
             Row(
              children: [
                SvgPicture.asset("assets/icons/check.svg"),
                SizedBox(width: defaultPadding/2,),
                Text("Bootstrap,firebase"),
            
              ],
            ),
             Row(
              children: [
                SvgPicture.asset("assets/icons/check.svg"),
                SizedBox(width: defaultPadding/2,),
                Text("Github / Git"),
            
              ],
            ),
            ],
          
            
          ),
        ),
       
      ],
    );
  }
}

class animatedlinearprogressindicator extends StatelessWidget {
  const animatedlinearprogressindicator({
    super.key,
    required this.percent,
    required this.label,
  });
  final double percent;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percent),
          duration: defaultDuration,
          builder: (context, value, child) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        label,
                        style: TextStyle(color: Colors.white),
                      ),
                      Text((value * 100).toInt().toString() + "%"),
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                  LinearProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                ],
              )),
    );
  }
}
