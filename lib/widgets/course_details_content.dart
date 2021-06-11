import 'package:flutter/material.dart';
import 'package:ps13si/models/course_model.dart';
import 'package:ps13si/widgets/custom_app_bar.dart';
import 'package:ps13si/widgets/custom_progress_bar.dart';

class CourseDetailsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CourseModel courses = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: CustomAppBar(
        hasLeading: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                Text(
                  'Informações Adicionais',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Nome: ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Flexible(
                      child: Text(
                        courses.name,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Responsável: ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      courses.directorship,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Docente: ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      courses.teacher,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Local: ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      courses.place,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Progressão',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                CustomProgressBar(
                  value: courses.percentage,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
