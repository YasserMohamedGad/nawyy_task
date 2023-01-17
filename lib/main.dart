import 'package:femon/layout/layout.dart';
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.white,elevation: 0.0 ,),
        primarySwatch: Colors.blue,



      ),
      home: Layout()

    );
  }
}




