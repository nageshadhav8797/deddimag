import 'package:flutter/material.dart';

class AskAdvice extends StatefulWidget {
  AskAdvice({Key key}) : super(key: key);

  @override
  _AskAdviceState createState() => _AskAdviceState();
}

class _AskAdviceState extends State<AskAdvice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFeeeeee),
        appBar: AppBar(
          backgroundColor: Color(0xFFeeeeee),
          title: Text(
            "Ask an Advice",
            style: TextStyle(color: Colors.black),
          ),
          leading: CircleAvatar(
            radius: 12,
            backgroundColor: Colors.white10,
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.red,
                ),
                onPressed: null),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  height: 200, child: Center(child: Text("max 250 charectar"))),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: TextField(
                      minLines: 10,
                      maxLines: 15,
                      autocorrect: false,
                      decoration: InputDecoration.collapsed(
                          hintText: 'Discribe Your dillema'),
                    ),
                  ),
                ),
              ),
              Container(
              
               child: MaterialButton(
                 elevation: 0,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15)
                 ),
                 child: Text("Add a Dillema",style: TextStyle(color: Colors.red),),
                 color: Colors.white,
                 onPressed:(){}),
              ),
            ],
          ),
        ));
  }
}
