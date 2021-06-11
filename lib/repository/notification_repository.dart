import 'package:ps13si/models/notification_model.dart';

import 'database.dart';

class NotificationRepository {
  Future findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<NotificationModel> notifications = new List<NotificationModel>();

    if (db.created) {
      notifications = new List<NotificationModel>();
      notifications.add(
        new NotificationModel(
          id: 1,
          name:
              '🎉🎉 Parabéns, você concluiu a matéria de Operating System Tuning and Cognation!!',
        ),
      );
      notifications.add(
        new NotificationModel(
          id: 2,
          name:
              '😀 Você está quase finalizando a matéria de MicroService and Web Engineering',
        ),
      );
      notifications.add(
        new NotificationModel(
          id: 3,
          name: '📅 A entrega das matérias é para o dia 11/06/2021',
        ),
      );
      notifications.add(
        new NotificationModel(
          id: 4,
          name:
              '🎉🎉 Parabéns, você concluiu a matéria de Programming and Database Management',
        ),
      );
    }

    return new Future.value(notifications);
  }
}
