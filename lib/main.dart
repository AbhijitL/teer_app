import 'package:flutter/material.dart';
import 'UI/HomeScreen.dart';
import 'chat/chat.dart';
void main(){
  runApp(MaterialApp(
    title: "Teer Result",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Poppins',
    ),
    home: Appss(),
  ));
}