import 'package:flutter/material.dart';
class Option extends StatefulWidget {
  Option({Key key}) : super(key: key);

  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(),
      
body: SingleChildScrollView(
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Text(
        'Headline',
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(
        height: 200.0,
        child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) => Card(
                child: Center(child: Text('Dummy Card Text')),
              ),
        ),
      ),
      Text(
        'Demo Headline 2',
        style: TextStyle(fontSize: 18),
      ),
      Card(
        child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
      ),
      Card(
        child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
      ),
      Card(
        child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
      ),
      Card(
        child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
      ),
      Card(
        child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
      ),
    ],
  ),
),

          );
  }
}