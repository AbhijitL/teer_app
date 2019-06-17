import 'package:flutter/material.dart';
import 'package:csv/csv.dart';

import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/services.dart';

class TableLayout extends StatefulWidget {
  @override
  _TableLayoutState createState() => _TableLayoutState();
}
class _TableLayoutState extends State<TableLayout> {

  List<List<dynamic>> data = [];
  
  loadAsset() async {
    final myData = await rootBundle.loadString("asset/dreamss.csv");
    List<List<dynamic>> csvTable = CsvToListConverter().convert(myData);

    return csvTable;
  }
  void load() async{
    var newdata = await loadAsset();
    setState(() {
      data = newdata;
    });
    print("am i still being called called ");
  }

  @override
  void initState() {
    super.initState();
    load();
  }
  
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
        backgroundColor: Color.fromRGBO(39, 42, 76, 100.0),
        appBar: AppBar(
          title: Text("Dream no",style: TextStyle(fontSize: 24.0,color: Colors.white,fontWeight: FontWeight.w900),),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(12,17, 53, 50),
          elevation: 0.0,
        ),
        //floatingActionButton: FloatingActionButton( onPressed: load,child: Icon(Icons.refresh),),
        body: ListView(
          children: <Widget>[
            Container(margin: EdgeInsets.only(top: 20.0),),
        Table(
          border: TableBorder.all(width: 1.0,color: Colors.white),
          children: data.map((item){
            return TableRow(
              children: item.map((row){
                return Text(row.toString(),style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w900,color: Colors.white,
                shadows:[
                  new Shadow(
                    color: Colors.black87,
                    offset: new Offset(1.0, 1.0),
                    blurRadius: 2.0,
                  )
                ], 
                ),);
              }).toList(),
            );
          }).toList(),
        ),
    ]),
    );
  }
}