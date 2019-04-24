import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(new MaterialApp(
  home: new HomePage(),
));
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String url ="https://swapi.co/api/people";
  List data;
  @override
  void initState(){
    super.initState();
    this.getJsonData;
  }
  Future<String>getJsonData() async{
    var response = await HTTP.GET(
      //encode the url
      Uri.encodeFull(url),
      //only accept json response
      headers: {"Accept":"application/json"}
    );
    print(response.body);
    setState(() {
      var converDataToJson = JsonDecoder.(response.body);
      data = converDataToJson['results'];
    });
    return "success";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Retrive json via http get"),
      ),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context,int index){
          return new Container(
            child: new Center(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Card(
                    child: new Container(
                      child: new Text(data[index]['name']),
                      padding: const EdgeInsets.all(20.0),
                    ),
                  )
                ],
              ),
            ),
          );
      }
      ),
    );
  }
}

