import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import 'dreamno.dart';
import '../chat/chat.dart';
import 'aboutMe.dart';



class Appss extends StatefulWidget {
  @override
  _AppssState createState() => _AppssState();
}

class _AppssState extends State<Appss> {
  
  //Variables

  
 //Time Varables
  var today = new DateTime.now();
  var day = new  DateTime.now().day;
  var month = new  DateTime.now().month;
  var year = new  DateTime.now().year;
  int timeNowMin = new TimeOfDay.now().minute;
  int timeNowHour = new TimeOfDay.now().hour;
  int restrictedHourFR = 16;
  int restrictedMinFr = 15;
  int restrictedHourSR = 17;
  int restrictedMinSr = 15;
  //End of time

  //DataRequest variables
  var direct1 = "0";
  var direct2 = '0';
  var house1 = '0';
  var house2 = '0';
  var ending1 = "0";
  var ending2 = "0";
  int result = 0;
  int result1 = 0;
  var sr1 = 0;
  //End of Data Request variables
  
  //End of variables
  
  //Function variables

  String TodayIsSundayString(){
    return "Sunday";
  }

  bool isSunday(){
      if(today.weekday == 7){
        return true;
      }else{return false;} 
    }
  //Result Functions
  Future<String> fetchData1 ()async{
    var response1 = await get("http://motyar.info/webscrapemaster/api/?url=http://teertoday.com/&xpath=/html/body/div[5]/div/table/tbody/tr[3]/td[1]#vws");
    List teerModel =  json.decode(response1.body);
    if(timeNowHour <= restrictedHourFR){
      if(timeNowMin < restrictedHourFR){
        result = 0;
        print("i cant get fr 2");
      }else{
            if(timeNowHour == restrictedHourFR){
              var line = teerModel[0]["text"].replaceAll(new RegExp(r"(\s\n)"), "");//saviour of the day
              var line1 = int.parse(line.toString());
              print("can get FR");
              setState(() {
                if(isSunday() == true){
                result = 0;
              }else{
                result = line1;
              }
              });
            }else{
              result= 0;
              print("can't get fr 3");
            }
          }
      print("i cant get fr 1");
    }  
    else{
    var line = teerModel[0]["text"].replaceAll(new RegExp(r"(\s\n)"), "");//saviour of the day
    var line1 = int.parse(line.toString());
    print("can get FR");
    setState(() {
      if(isSunday() == true){
        result = 0;
      }else{
        result = line1;
      }
    });
    }
    
    print("$timeNowHour");
    print("$timeNowMin");    
  } 
  Future<String> fetchData2 ()async{
    var response2 = await get("http://motyar.info/webscrapemaster/api/?url=http://teertoday.com/&xpath=/html/body/div[5]/div/table/tbody/tr[3]/td[2]#vws");
    List teerModel2 =  json.decode(response2.body);
    if(timeNowHour <=restrictedHourSR){
      if(timeNowMin<restrictedMinSr){
        result1= 0;
        print("can't get sr 2");
      }else{
        if(timeNowHour == restrictedHourSR){
          var sr = teerModel2[0]["text"].replaceAll(new RegExp(r"(\s\n)"), "");//saviour of the day
          var sr1 = int.parse(sr.toString());
          print("I can GEt sr");
          setState(() {
            if(isSunday() == true){
                result1 = 0;
            }else{
                result1 = sr1;
            }
          });
        }else{
          result1 = 0;
          print("cant get sr 3");
        }
      }
      print("cant get sr 1");
    }else{
      var sr = teerModel2[0]["text"].replaceAll(new RegExp(r"(\s\n)"), "");//saviour of the day
      var sr1 = int.parse(sr.toString());
      print("I can GEt sr");
      setState(() {
      if(isSunday() == true){
        result1 = 0;
      }else{
        result1 = sr1;
      }
      });   
    } 
  } 
  //ENd of Result functions

  //Common number functions
  Future<String>  fetchData3()async{
    var response1 = await get("http://motyar.info/webscrapemaster/api/?url=http://teertoday.com/common-numbers2.html&xpath=//div[@id=work]/div/div[1]/table[1]/tbody/tr[3]/td[1]#vws");
    List teerModel =  json.decode(response1.body);
    var directline1 = teerModel[0]["text"];//saviour of the day
    var directline1a = directline1.toString();
    setState(() {
      if(isSunday() == true){
      direct1 = "0";
    }else{
      direct1 = directline1a;
    }
    });
    print("direct1 $direct1");
  }
  Future<String>  fetchData4()async{
    var response1 = await get("http://motyar.info/webscrapemaster/api/?url=http://teertoday.com/common-numbers2.html&xpath=//div[@id=work]/div/div[1]/table[1]/tbody/tr[3]/td[2]#vws");
    List teerModel =  json.decode(response1.body);
    var houseline1 = teerModel[0]["text"];//saviour of the day
    var houseline1a = houseline1.toString();
    setState(() {
      if(isSunday() == true){
      house1 = "0";
    }else{
      house1 = houseline1a;
    }
    });
    print("house1 $house1");
  }
  Future<String>  fetchData5()async{
    var response1 = await get("http://motyar.info/webscrapemaster/api/?url=http://teertoday.com/common-numbers2.html&xpath=//div[@id=work]/div/div[1]/table[1]/tbody/tr[3]/td[3]#vws");
    List teerModel =  json.decode(response1.body);
    var endingline1 = teerModel[0]["text"];//saviour of the day
    var endingline1a = endingline1.toString();
    setState(() {
      if(isSunday() == true){
      ending1 = "0";
    }else{
      ending1 = endingline1a;
    }
    });
    print("ending1 $ending1");
  }
  Future<String>  fetchData6()async{
    var response1 = await get("http://motyar.info/webscrapemaster/api/?url=http://teertoday.com/common-numbers2.html&xpath=//div[@id=work]/div/div[1]/table[2]/tbody/tr[2]/td[1]#vws");
    List teerModel =  json.decode(response1.body);
    var directline2 = teerModel[0]["text"];//saviour of the day
    var directline2a = directline2.toString();
    setState(() {
      if(isSunday() == true){
      direct2 =="0";
    }else{
      direct2 = directline2a;
    }
    });
    print("direct2 $direct2");
  }
  Future<String>  fetchData7()async{
    var response1 = await get("http://motyar.info/webscrapemaster/api/?url=http://teertoday.com/common-numbers2.html&xpath=//div[@id=work]/div/div[1]/table[2]/tbody/tr[2]/td[2]#vws");
    List teerModel =  json.decode(response1.body);
    var houseline2 = teerModel[0]["text"];//saviour of the day
    var houseline2a = houseline2.toString();
    setState(() {
      if(isSunday() == true){
      house2 == "0";
    }else{
      house2 = houseline2a;
    }
    });
    print("house2 $house2");
  }
  Future<String>  fetchData8()async{
    var response1 = await get("http://motyar.info/webscrapemaster/api/?url=http://teertoday.com/common-numbers2.html&xpath=//div[@id=work]/div/div[1]/table[2]/tbody/tr[2]/td[3]#vws");
    List teerModel =  json.decode(response1.body);
    var endingline2 = teerModel[0]["text"];//saviour of the day
    var endingline2a = endingline2.toString();
    setState(() {
      if(isSunday() == true){
      ending2 == "0";
    }else{
      ending2 = endingline2a;
    }
    });
    print("ending2 $ending2");
  }


  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
        backgroundColor: Color.fromRGBO(39, 42, 76, 30.0),
        appBar: AppBar(
          title: Text("Teer result",style: TextStyle(fontSize: 24.0,color: Colors.white,fontWeight: FontWeight.w900),),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(12,17, 53, 50.0),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.chat),
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => chatt()),
                  );
              }
            ),
          ],
          iconTheme: new IconThemeData(color: Colors.blueAccent),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF0A0E21),
          onPressed: (){
            fetchData1();
            fetchData2();
            fetchData3();
            fetchData4();
            fetchData5();
            fetchData6();
            fetchData7();
            fetchData8();
          },
          child: Icon(Icons.refresh,color: Colors.tealAccent),
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(39, 42, 76,50),
          ),
          child: Drawer(
          child:ListView(
            children: <Widget>[
              DrawerHeader(
                child: Container(
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Teer Result",style: TextStyle(fontSize: 24.0,color: Colors.white,fontWeight: FontWeight.w900),),
                      Text("A Simple app to check teer result and chat with other people ",style: TextStyle(fontSize: 18.0,color: Colors.white,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(12, 17, 53, 50),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings_system_daydream,color: Colors.pinkAccent,),
                title: Text("Dream Number",style: TextStyle(fontSize: 24.0,color: Colors.white,fontWeight: FontWeight.w900),),
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TableLayout()),
                  );
                }
              ),
              ListTile(
                leading: Icon(Icons.person,color: Colors.pinkAccent,),
                title: Text("About us",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900),),
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => aboutMe()),
                  );
                }
              ),
            ],
          ),
        ),
        ),
        body:ListView(
        children: <Widget>[   
        Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 40),
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(12,17, 53, 100),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black87,
                      offset: new Offset(1.0, 1.0),
                      blurRadius: 2.0,
                      
                    ),
                  ]
                ),
                child:Column(
                children: <Widget>[
                  Center(
                    child: Text("Today Result",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900),),
                  ),
                  //Container(margin: EdgeInsets.only(bottom: 10.0),),
                  Center(
                    child: Text("${(isSunday()==true)?TodayIsSundayString():"$day/$month/$year"}",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900),),
                  ),
                  Container(margin: EdgeInsets.only(bottom: 10.0),),
                  Table(
                  border: TableBorder.all(width: 1.0,color: Colors.white),
                  children: [
                    TableRow(children: [
                      TableCell(child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          new Text("F/R (4:15)",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900,),),
                          new Text("$result",
                          style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900),),
                        ],
                      ),)
                    ]
                    ),
                    TableRow(children: [
                      TableCell(child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          new Text("S/R (5:15)",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900),),
                          new Text("$result1",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900),),
                        ],
                      ),)
                    ]
                    ),
                  ],
                ),
                
                ],
                ),
              ),
              Container(margin: EdgeInsets.only(top: 15.0),),
              //Todo Puts ads here
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(12,17, 53, 100),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black87,
                      offset: new Offset(1.0, 1.0),
                      blurRadius: 2.0,
                      
                    ),
                  ]
                ),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text("Ads Reserved Space",
                        style: TextStyle(fontSize: 14.0,color: Colors.white,fontWeight: FontWeight.w900,)
                      ),
                    )
                  ],
                ),
              ),
              //End Ads Reserved space
              Container(margin: EdgeInsets.only(top: 15.0),),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 40),
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(12,17, 53, 100),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black87,
                      offset: new Offset(1.0, 1.0),
                      blurRadius: 2.0,
                      
                    ),
                  ]
                ),
                child: Column(
                  children: <Widget>[
                    Container(margin: EdgeInsets.only(top: 20.0),),
                    Center(
                      child: Text("Common Number",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900,),),
                    ),
                    Container(margin: EdgeInsets.only(top: 5.0),),
                    Center(
                      child: Text("${(isSunday()==true)?TodayIsSundayString():"$day/$month/$year"}",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900,),),
                    ),
                    Container(margin: EdgeInsets.only(top: 10.0),),
                    Table(
                      border: TableBorder.all(width: 1.0,color: Colors.white),
                      children: [
                        TableRow(
                          children: [TableCell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                new Text("Direct",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900,),),
                                new Text("House",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900,),),
                                new Text("Ending",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900,),),
                              ],
                            ),
                          ),],
                        ),
                        TableRow(
                          children: [
                            TableCell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                new Text('$direct1',style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900,),),
                                new Text("$house1",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900,),),
                                new Text("$ending1",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900,),),
                              ],
                            ),
                          ),],
                          ),
                          TableRow(
                          children: [
                            TableCell(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                new Text('$direct2',style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900,),),
                                new Text("$house2",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900,),),
                                new Text("$ending2",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.w900,),),
                              ],
                            ),
                          ),],
                          )
                      ],
                    ),
                  ],
                )
              ),
            ],
          
          ),
        ),
        ],
        ),
    );
  }
}