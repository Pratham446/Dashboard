import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class animatedcircularprogressindicator extends StatelessWidget {
  animatedcircularprogressindicator({
    super.key,
    required this.percent,
    required this.label,
  });
  final double percent;
  String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: percent ),
              duration: defaultDuration,
              builder: (context, value, child) => Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                        value: value,
                        color: primaryColor,
                        backgroundColor: darkColor,
                      ),
                      Center(
                          child: Text( (value*100).toInt().toString()+"%",
                      //  (value*100),.toInt().toString()+"%";,
                        style: TextStyle(color: Colors.white),
                      )),
                    ],
                  )),
        ),
        SizedBox(height: defaultPadding / 2),
        Text(
         label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
