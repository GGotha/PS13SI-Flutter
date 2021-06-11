import 'package:ps13si/models/course_model.dart';

import 'database.dart';

class CourseRepository {
  Future findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<CourseModel> courses = new List<CourseModel>();

    if (db.created) {
      courses = new List<CourseModel>();
      courses.add(
        new CourseModel(
          id: 1,
          name: 'Operating System Tuning and Cognation',
          percentage: 1,
        ),
      );
      courses.add(
        new CourseModel(
          id: 2,
          name: 'Network Management and Monitoring',
          percentage: 0.2,
        ),
      );
      courses.add(
        new CourseModel(
          id: 3,
          name: 'Governança e Melhores Práticas em Projetos de Sistemas',
          percentage: 0.3,
        ),
      );
      courses.add(
        new CourseModel(
          id: 4,
          name: 'Programming and Database Management',
          percentage: 0.4,
        ),
      );
      courses.add(
        new CourseModel(
          id: 5,
          name: 'Programming and Database Management',
          percentage: 1,
        ),
      );
      courses.add(
        new CourseModel(
          id: 6,
          name: 'Microservice And Web Engineering',
          percentage: 0.8,
        ),
      );
    }

    return new Future.value(courses);
  }
}
