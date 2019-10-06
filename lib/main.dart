import 'package:flutter/material.dart';
import 'UI/HomeScreen.dart';

void main(){
  runApp(MaterialApp(
    title: "Teer Result",
    debugShowCheckedModeBanner: false,
    //showPerformanceOverlay: true,
    theme: ThemeData(
      fontFamily: 'Poppins',
      iconTheme: new IconThemeData(color: Colors.white),
      primaryColor: Color(0xFFE4BE9E),
      accentColor: Color(0xFFE4BE9E)
    ),
    home: Appss(),
  ));
}