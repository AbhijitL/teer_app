import 'package:flutter/material.dart';
import 'UI/HomeScreen.dart';

void main(){
  runApp(MaterialApp(
    title: "Teer Result",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Poppins',
      iconTheme: new IconThemeData(color: Colors.blueAccent),
    ),
    home: Appss(),
  ));
}