import 'package:Tex_generton/Pages/Page.dart';
import 'package:Tex_generton/Pages/Page7.dart';
import 'package:Tex_generton/Pages/page5.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Pages/chat.dart';
// import 'package:tex_generton/Pages/Page.dart';
// import 'package:tex_generton/Pages/Page6.dart';
// import 'package:tex_generton/Pages/page5.dart';
// import 'package:tex_generton/login.dart';
// import 'package:tex_generton/Pages/page5.dart';
late SharedPreferences sharedPref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF1C1B1B),
      ),
      home: Page6(),
    );
  }
}
