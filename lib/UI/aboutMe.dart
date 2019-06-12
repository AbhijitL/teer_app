import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class aboutMe extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(39, 42, 76, 100.0),
        appBar: AppBar(
          title: Text("About us",style: TextStyle(fontSize: 24.0,color: Colors.white,fontWeight: FontWeight.w900),),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(12,17, 53, 500),
          elevation: 0.0,
        ),
        body:ListView(
          children: <Widget>[   
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
        children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Center(
            child: CircleAvatar(
              backgroundImage: ExactAssetImage("asset/logo.png"),
              radius: 80,
            ),
          ),
        ),
        Center(
          child: Text("Milk and Egg Studios",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.blueAccent,
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.w400, 
          ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.cyanAccent,  
          ),
          child: Center(
            child: Text("This app is Develop by MilkandEgg studio founded by two sibling from a remote village in the district of jiribam,Manipur,India.They are hobby developers who are still in schools.For any equiry please send email to us in this link.",
            style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800),
            ),
          ),
          ),  
        ),
        Center(
          child: Container(
      child: Ink(
        decoration: ShapeDecoration(
          color: Colors.lightBlue,
          shape: CircleBorder(),
        ),
        child: IconButton(
          icon: Icon(Icons.link),
          color: Colors.white,
          onPressed: () {
            launch("https://abhijitl.github.io");
          },
        ),
      ),
    ),
        ),
        ],
        ),
        ],
        ),
    );
  }
}