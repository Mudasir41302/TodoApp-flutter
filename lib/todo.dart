import 'package:flutter/material.dart';

class Todo extends StatefulWidget {

  @override
  _TodoState createState() => _TodoState();
}



class _TodoState extends State<Todo> {

  var output = "";  
  List<dynamic> lst=[];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
      itemCount: lst.length,
      itemBuilder: (context,index){
        return Container(
          height: 50,
          color: Colors.amber,
          margin: EdgeInsets.only(top: 15),
          child: ListTile(
            
          title: Text("${lst[index]}"),
          trailing: Container(
            width: 60,
            child: Row(
              children: [

                GestureDetector(onTap: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text("Edit"),
                    content: TextField(
                      onChanged: (value){
                        output = value;
                      }
                    ),
                    actions: [
                      ElevatedButton(
                      onPressed: (){
                      Navigator.pop(context);
                      setState(() {
                      lst.replaceRange(index, index+1, {output});                            
                      });
                      }, child: Text("Save Changes"))
                    ],
                  );
                  });
                },child: Icon(Icons.edit)),

              SizedBox(width: 10,),

                GestureDetector(onTap: (){
                setState(() {
                lst.removeAt(index);     
                });
                },child: Icon(Icons.delete)),
              ],
            ),
          ),
          ),
        );
      }
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          width: 130,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.blue,
                child: Icon(Icons.delete),
                onPressed: () {
                setState(() {
                lst.clear();                     
                });
                },
              ),
              SizedBox(width: 10,),
              FloatingActionButton(
                backgroundColor: Colors.blue,
                child: Icon(Icons.add),
                onPressed: () {
                  showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text("Add Item"),
                    content: TextField(
                      onChanged: (value){
                        output = value;
                      }
                    ),
                    actions: [
                      ElevatedButton(
                      onPressed: (){
                      Navigator.pop(context);
                      setState(() {
                      lst.add(output);                            
                      });
                      }, child: Icon(Icons.add),),
                    ],
                  );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}