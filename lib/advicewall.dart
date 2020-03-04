import 'package:flutter/material.dart';

class Advicewall extends StatefulWidget {
  Advicewall({Key key}) : super(key: key);

  @override
  _AdvicewallState createState() => _AdvicewallState();
}

class _AdvicewallState extends State<Advicewall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeeeee),
      appBar: AppBar(
        backgroundColor: Color(0xFFeeeeee),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
        actions: <Widget>[
         CircleAvatar(
           backgroundColor: Colors.white,
           radius: 20,
           child: IconButton(icon: Icon(Icons.add,color: Colors.black,), onPressed: null),
         )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                width: 350,
                height: 40,
                child:
                    Center(child: Text(" Your advice is highly appriciated")),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1,
              child: new ListView.builder(
                padding: const EdgeInsets.all(16),
                itemBuilder: (context, i) {
                  return Container(
                    height: 160,
                    child: Card(
                        color: Color(0xFFfaf9f7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
//                color: Colors.blue,
                        elevation: 10,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Container(
                                        child: IconButton(
                                            icon: Icon(Icons.favorite),
                                            onPressed: null),
                                      ),
                                      Text("sammy need a advice")
                                    ],
                                  ),
                                ),
                                Container(
                                    margin:
                                        EdgeInsets.only(right: 10, left: 50),
                                    alignment: Alignment.bottomRight,
                                    child: Text("3 Min Ago")),
                              ],
                            ),
                            Container(
                              height: 40,
                              child: Text("Advice me Your best film ever ?"),
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                   
                                    child: Text("10 Advice")),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left:180,bottom: 10),
                                  alignment: Alignment.bottomRight,
                                  child: Row(
                                   // mainAxisAlignment: MainAxisAlignment.end,
                                    //crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      IconButton(icon: Icon(Icons.chat,), onPressed: null),
                                      IconButton(icon: Icon(Icons.info,),onPressed: (){},),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
