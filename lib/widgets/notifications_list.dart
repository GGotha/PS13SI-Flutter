import 'package:flutter/material.dart';
import 'package:ps13si/models/notification_model.dart';

class NotificationsList extends StatelessWidget {
  NotificationModel notifications;

  NotificationsList({
    Key key,
    @required this.notifications,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        notifications.name,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
