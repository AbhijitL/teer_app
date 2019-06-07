import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:async';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}
   

class _AppState extends State<App> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();

  showNotification() async{
    var time = new Time(3,51, 0);
    var androidPlatformChannelSpecifics =
    new AndroidNotificationDetails('repeatDailyAtTime channel id',
        'repeatDailyAtTime channel name', 'repeatDailyAtTime description');
    var iOSPlatformChannelSpecifics =
    new IOSNotificationDetails();
    var platformChannelSpecifics = new NotificationDetails(
    androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.showDailyAtTime(
        0,
        'Teer Result Time',
        'Open The App and check for the Result',
        time,
        platformChannelSpecifics);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showNotification();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}