import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fresco/result_page.dart';
import 'package:fresco/newfaqs.dart';
import 'package:fresco/secondary_home_page.dart';
import 'package:fresco/about.dart';

import '../widget_tree.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  bool login = false;
  bool signup = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const WidgetTree(),
      routes: {
        "/": (context) => secondaryhomepage(), // Home Page
        "/home": (context) => secondaryhomepage(),
        "/newfaqs": (context) => newfaqs(),
        "/result_page": (context) => result_page(),
        "/about": (context) => about(),
      },
    );
  }
}
