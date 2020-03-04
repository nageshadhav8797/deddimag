import 'package:flutter/material.dart';
import 'package:ui_shooping/advicewall.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
      theme: ThemeData(
      
      ),
      home: Advicewall(),//HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeeeee),
      appBar: new AppBar(
        backgroundColor: Color(0xFFeeeeee),
        leading: IconButton(icon: Icon(Icons.menu,color: Colors.red,), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.satellite), onPressed: () {}),
        ],
        flexibleSpace: Center(
          child: Container(
            margin: EdgeInsets.only(bottom: 10, top: 30),
            height: 80,
            width: 280,
            alignment: Alignment.center,
            child: TextField(
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(20.0),
                    ),
                  ),
                  filled: true,
                  // hintStyle: new TextStyle(color: Colors.grey[800]),
                  hintText: "Type in your text",
                  fillColor: Colors.white70),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      
                      child: Column(
                        children: <Widget>[
                   RotatedBox(
                     
                     child: FlatButton(onPressed: null, child: Text("mew")), quarterTurns:3,),
                    RotatedBox(
                      child: FlatButton(onPressed: null, child: Text("mew")), quarterTurns: 3,),
                     RotatedBox(
                       child: FlatButton(onPressed: null, child: Text("mew")), quarterTurns: 3,),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        height: 350,
                        width: MediaQuery.of(context).size.width-40,
                        child: ListView.builder(
                            itemExtent: 150,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        height: 300,
                                        margin: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2015/07/09/00/29/woman-837156_1280.jpg"),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        child: Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.all(3.0),
                                              child: Icon(
                                                Icons.favorite,
                                                size: 15,
                                                color: Colors.red,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(3.0),
                                              child: Icon(
                                                Icons.chat,
                                                size: 15,
                                                color: Colors.red,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(3.0),
                                              child: Icon(
                                                Icons.visibility,
                                                size: 15,
                                                color: Colors.red,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(3.0),
                                              child: Icon(
                                                Icons.share,
                                                size: 15,
                                                color: Colors.red,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: <Widget>[
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        right: 22, left: 20),
                                                    child: Icon(
                                                      Icons.bookmark,
                                                      size: 15,
                                                      color: Colors.red,
                                                    ))
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            itemCount: 20),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Browse Categeries",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2015/07/09/00/29/woman-837156_1280.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
