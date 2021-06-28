import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todoapp/todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
            child: DrawerHeader(
              child: ListView(
                children: [
                  Container(
                    color: Colors.blue,
                    height: 150,
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(top: 100,left: 10,),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.people),
                          ),
                        ],
                      ),
                    ),
                  ),    
                  Container(
                    color: Colors.blue,
                    height: 50,
                    margin: EdgeInsets.only(top: 15,),
                    child: ListTile(
                      title: Text("Page One",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      trailing: Icon(Icons.arrow_upward,color: Colors.white,),
                    ),
                  ),    
                  Container(
                    color: Colors.blue,
                    height: 50,
                    margin: EdgeInsets.only(top: 15,),
                    child: ListTile(
                      title: Text("Page Two",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      trailing: Icon(Icons.arrow_upward,color: Colors.white,),
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    margin: EdgeInsets.only(top: 15,),
                    child: ListTile(
                      title: Text("Page Three",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      trailing: Icon(Icons.arrow_upward,color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ),
        ),
        appBar: AppBar(
          title: Text("TODO App"),
        ),
        body: Todo(),
      ),
    );
  }
}