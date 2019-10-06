import 'package:flutter/material.dart';
import 'package:terr_result/const.dart';
import 'package:url_launcher/url_launcher.dart';



class aboutMe extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: sysColor,
        appBar: AppBar(
          title: Text("About us",style: TextStyle(fontSize: 24.0,color: Colors.white,fontWeight: FontWeight.w900),),
          centerTitle: true,
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
            color: fontColor,
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
            color: boxColor,  
          ),
          child: Center(
            child: Text("This app is Develop by MilkandEgg studio founded by two sibling from a remote village in the district of jiribam, Manipur, India.They are hobby developers who are still in schools. For any equiry please click on the contact.",
            style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800),
            ),
          ),
          ),  
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Contact",style: TextStyle(fontSize: 20.0,color: fontColor)),
            Text("Website",style: TextStyle(fontSize: 20.0,color: fontColor)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
        Ink(
        decoration: ShapeDecoration(
          color: boxColor,
          shape: CircleBorder(),
        ),
        child: IconButton(
          icon: Icon(Icons.link),
          color: fontColor,
        
          onPressed: () {
            launch("http://www.123formbuilder.com/form-4870175/contact-us");
          },
        ),
      ),
          Ink(
        decoration: ShapeDecoration(
          color: boxColor,
          shape: CircleBorder(),
        ),
        child: IconButton(
          icon: Icon(Icons.open_in_browser),
          color: fontColor,
          onPressed: () {
            launch("https://abhijitl.github.io/");
          },
        ),
      ),

          ],
        ),
        ],
        ),
        ],
        ),
    );
  }
}