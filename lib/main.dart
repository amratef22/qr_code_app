import 'package:flutter/material.dart';
import 'package:qr_code_app/screens/home.dart';

void main() {
  runApp(const MyApp());
  ThemeData(
    primaryColor: Colors.deepOrange,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepOrange,
        ),
        primarySwatch: Colors.deepOrange,
      ),
      home:QrCode(),
    );
  }
}
