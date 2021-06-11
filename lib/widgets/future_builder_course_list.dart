import 'package:flutter/material.dart';
import 'package:ps13si/repository/course_repository.dart';
import 'package:ps13si/widgets/course_list.dart';

class FutureBuilderCourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      initialData: [],
      future: CourseRepository().findAllAsync(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: ListView.builder(
              itemCount: snapshot.data == null ? 0 : snapshot.data.length,
              itemBuilder: (BuildContext context, index) {
                final courses = snapshot.data[index];

                return Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: CourseList(
                    courses: courses,
                  ),
                );
              },
            ),
          );
        } else {
          return Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 50),
              child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          );
        }
      },
    );
  }
}
