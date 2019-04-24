import 'package:flutter/material.dart';
void main(){
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title:"My App",
      home: new HomePage(),
      theme: new ThemeData(
       primarySwatch: Colors.grey,
        brightness: Brightness.light,
        accentColor: Colors.amber
      ),
        );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext = "Hello World";
  void _changeText(){
    setState(() {
      if(mytext.startsWith("H")){
        mytext="Welcome to My App";
      }else{
        mytext="Hello World";
      }
    });
  }
  Widget _bodywidget(){
    return new Container(
      decoration: new BoxDecoration(color: Colors.lime),
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(mytext,style: new TextStyle(
              fontSize: 23.0
            ),),
            new RaisedButton(
              child: new Text("click",style: new TextStyle(
                color: Colors.white
              ),),
              onPressed: _changeText,
              color: Colors.indigoAccent,
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: new AppBar(
    title:new Text("Home Page"),
    ),
     body: _bodywidget()
    );
  }
}

