import 'package:flutter/material.dart';
import 'package:ps13si/models/course_model.dart';
import 'package:ps13si/widgets/custom_progress_bar.dart';

// ignore: must_be_immutable
class CourseList extends StatelessWidget {
  CourseModel courses;

  CourseList({
    Key key,
    @required this.courses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                "/course-details",
                arguments: courses,
              );
            },
            child: ListTile(
              title: Text(
                courses.name,
                style: TextStyle(color: Colors.white),
              ),
              subtitle: CustomProgressBar(
                value: courses.percentage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
