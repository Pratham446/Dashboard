
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/main/components/home/animatedtext.dart';
import 'package:portfolio/screens/main/components/home/homebanner.dart';
import 'package:portfolio/screens/main/main_screen.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        homeBanner(),
        animatedtexts(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:.5),
              child: Text(
                "My Projects",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(padding: EdgeInsets.all(8)),
            Responsive(
                mobile: projectgridview(crossAxisCount: 1,childAspectRatio: 2,),
                mobileLarge: projectgridview(crossAxisCount: 2),
                tablet: projectgridview(childAspectRatio:3,),
                desktop: projectgridview(),),
          ],
        ),
      ],
    );
  }
}

class projectgridview extends StatelessWidget {
  const projectgridview({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: demo_projects.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isMobile(context)
                ? 1
                : (Responsive.isTablet(context) ? 2 : crossAxisCount),
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
            childAspectRatio: Responsive.isMobile(context)
                ? 1.0
                : (Responsive.isTablet(context) ? 1.3 : childAspectRatio),
          ),
          itemBuilder: (context, index) => ProjectCard(
            project: demo_projects[index],
          ),
        );
      },
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: Responsive.isMobile(context) ? 18.0 : 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 5 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              height: 1.5,
              fontSize: Responsive.isMobile(context) ? 14.0 : 16.0,
            ),
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              "Read More >>",
              style: TextStyle(
                color: primaryColor,
                fontSize: Responsive.isMobile(context) ? 14.0 : 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}