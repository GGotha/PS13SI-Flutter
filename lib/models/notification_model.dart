import 'package:flutter/cupertino.dart';

class NotificationModel with ChangeNotifier {
  int id;
  String name;

  NotificationModel({
    this.id,
    this.name,
  });

  int countNotifications = 3;

  void updateNotifications(value) {
    countNotifications = value;

    notifyListeners();
  }
}
