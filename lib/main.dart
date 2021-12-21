import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBSStaNOfgM4GPH_gFGuUPQCPYmHDUGqsM",
      appId: "1:407239993352:web:a5c6d3f027cc51324bc9bd",
      messagingSenderId: "407239993352",
      projectId: "gamehay-7016b",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BotGame',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Chào mừng bạn đến với BotGame'),
    );
  }
}
