import 'package:flutter/material.dart';

Widget divider()=>Container(
  height: 2,
  width: 380,
  color: Colors.grey,
);


void navigateTo(context,Widget)=>
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Widget));
