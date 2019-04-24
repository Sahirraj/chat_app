import 'package:flutter/material.dart';
void main()=>runApp(new MaterialApp(
  theme: new ThemeData(
    primarySwatch: Colors.teal
  ),
  home: new Homepage(),

));
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Load Json App"),
      ),
      body: new Container(
        child: new Center(
        child:  new FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString('load_jason/person.json'),
          builder: (context,snapshot){
            var mydata= JSON.decode(snapshot.data.toString());
            return new ListView.builder(
              itemBuilder: (BuildContext contex,int index),{
                return new Card(
                child: new Column(
                C
                ),

                );
            }
            )
          }
        ),
          )
          ),
      ),
    );
  }
}

