import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';
import 'package:ps13si/models/notification_model.dart';
import 'package:ps13si/widgets/custom_app_bar.dart';
import 'package:ps13si/widgets/future_builder_course_list.dart';
import 'package:ps13si/widgets/future_builder_notification_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static int counter = 0;

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  @override
  void initState() {
    super.initState();
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android = new AndroidInitializationSettings('@mipmap/ic_launcher');
    var iOS = new IOSInitializationSettings();
    var initSetttings = new InitializationSettings(android: android, iOS: iOS);
    flutterLocalNotificationsPlugin.initialize(
      initSetttings,
    );

    Future.delayed(Duration(seconds: 2), () {
      showNotification();
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    FutureBuilderCourseList(),
    FutureBuilderNotificationList(counter: counter),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  showNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
            'your channel id', 'your channel name', 'your channel description',
            importance: Importance.max,
            priority: Priority.high,
            showWhen: false);
    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
      0,
      'Curso Concluído',
      '🎉🎉 Parabéns, você concluiu a matéria de Operating System Tuning and Cognation!!',
      platformChannelSpecifics,
      payload: 'item x',
    );
  }

  @override
  Widget build(BuildContext context) {
    final notificationModel =
        Provider.of<NotificationModel>(context, listen: true);

    Future.delayed(Duration(seconds: 2), () {
      notificationModel.updateNotifications(4);
    });

    return Scaffold(
      appBar: CustomAppBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        items: [
          BottomNavigationBarItem(
            label: 'Cursos',
            icon: Icon(Icons.computer),
          ),
          BottomNavigationBarItem(
            label: 'Noticações',
            icon: Badge(
              badgeContent:
                  Text('${notificationModel.countNotifications ?? 0}'),
              child: Icon(Icons.notifications),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
