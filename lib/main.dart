import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rb_digital_test/features/notificatons/ui/screens/notification_screen.dart';

import 'injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Notification',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const NotificationsScreen(),
    );
  }
}

