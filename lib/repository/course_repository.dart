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
          teacher: "Sérgio Ricardo Rota",
          directorship: "Agessandro Scarpioni",
          place: "FIAP - Aclimação",
        ),
      );
      courses.add(
        new CourseModel(
          id: 2,
          name: 'Network Management and Monitoring',
          percentage: 0.2,
          teacher: "Mauro Cesar Bernardes",
          directorship: "Agessandro Scarpioni",
          place: "FIAP - Aclimação",
        ),
      );
      courses.add(
        new CourseModel(
          id: 3,
          name: 'Governança e Melhores Práticas em Projetos de Sistemas',
          percentage: 0.3,
          teacher: "Renato Jardim Parducci",
          directorship: "Agessandro Scarpioni",
          place: "FIAP - Aclimação",
        ),
      );
      courses.add(
        new CourseModel(
          id: 4,
          name: 'Desenvolvimento Cross Platform',
          percentage: 0.4,
          teacher: "Flávio Moreni",
          directorship: "Agessandro Scarpioni",
          place: "FIAP - Aclimação",
        ),
      );
      courses.add(
        new CourseModel(
          id: 5,
          name: 'Programming and Database Management',
          percentage: 1,
          teacher: "Alexandre Barcelos",
          directorship: "Agessandro Scarpioni",
          place: "FIAP - Aclimação",
        ),
      );
      courses.add(
        new CourseModel(
          id: 6,
          name: 'Microservice And Web Engineering',
          percentage: 0.8,
          teacher: "Francisco Aurizelio de Sousa",
          directorship: "Agessandro Scarpioni",
          place: "FIAP - Aclimação",
        ),
      );
    }

    return new Future.value(courses);
  }
}
