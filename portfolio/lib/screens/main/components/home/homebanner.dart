import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/main/components/home/explore.dart';

class homeBanner extends StatelessWidget {
  const homeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyBuildAnimatedText();
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Discover My Amazing \nDashboard Screen",
                style: Responsive.isDesktop(context)
                    ? TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold)
                    : TextStyle(
                        fontSize: 25, // Adjust font size for smaller screens
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: defaultPadding / 2,
              ),
              DefaultTextStyle(
                style: TextStyle(color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(text: "<", children: [
                        TextSpan(
                          text: "Flutter",
                          style: TextStyle(color: primaryColor),
                        ),
                        TextSpan(text: ">"),
                      ]),
                    ),
                    SizedBox(
                      width: defaultPadding / 2,
                    ),
                    AnimatedTextKit(animatedTexts: [
                      TyperAnimatedText("Hello Flutter/Dart Developers"),
                      TyperAnimatedText("Engaging your Experience"),
                      TyperAnimatedText("Backend Integration with Firebase"),
                    ]),
                    SizedBox(
                      width: defaultPadding / 2,
                    ),
                    Text.rich(
                      TextSpan(text: "<", children: [
                        TextSpan(
                          text: "Flutter",
                          style: TextStyle(color: primaryColor),
                        ),
                        TextSpan(text: ">"),
                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.only(left: Responsive.isDesktop(context) ? 15 : 0),
                child: FittedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => explore()));
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.only(left: 1),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: Text(
                      "Explore Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
