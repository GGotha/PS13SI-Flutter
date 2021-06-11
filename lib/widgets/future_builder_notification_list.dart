import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ps13si/models/notification_model.dart';
import 'package:ps13si/repository/notification_repository.dart';
import 'package:ps13si/widgets/notifications_list.dart';

class FutureBuilderNotificationList extends StatefulWidget {
  var counter;

  FutureBuilderNotificationList({
    Key key,
    @required this.counter,
  }) : super(key: key);

  @override
  _FutureBuilderNotificationListState createState() =>
      _FutureBuilderNotificationListState();
}

class _FutureBuilderNotificationListState
    extends State<FutureBuilderNotificationList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      initialData: [],
      future: NotificationRepository().findAllAsync(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: ListView.builder(
              itemCount: snapshot.data == null ? 0 : snapshot.data.length,
              itemBuilder: (BuildContext context, index) {
                NotificationModel notification = snapshot.data[index];

                return Column(
                  children: [
                    NotificationsList(
                      notifications: notification,
                    ),
                    Divider(),
                  ],
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
