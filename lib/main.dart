import 'package:chat_app/auth_contr.dart';
import 'package:chat_app/login.dart';
import 'package:chat_app/signup.dart';
import 'package:chat_app/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthControl()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Loginpage(),
    );
  }
}
