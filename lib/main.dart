import 'package:flutter/material.dart';
import 'package:practice_flutt/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String text = "次へ";

  final myFocusNode = FocusNode();

  final myController = TextEditingController();

  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Big message!'),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Container(
        width: double.infinity,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'your name'
                    ),
                    onChanged: (text) {
                      name = text;
                    },
                  ),
                  TextField(
                    controller: myController,
                    focusNode: myFocusNode,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Send a message'
                    ),
                  ),
                  RaisedButton(
                    child: Text('send!'),
                    onPressed: (){
                    //  ここにフォーカスするためのコード
                      myFocusNode.requestFocus();
                      print(name);
                      print(myController.text);

                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text("from:" + name + "\nmsg:" + myController.text),
                            );
                          },
                      );
                    },
                  )
                ],
              ),



              // RaisedButton(
              //   child: Text(text),
              //   onPressed: () async {
              //     //ここに押したら反応するコードを書く
              //     final result = await  Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => NextPage('parappappar'), // NextPage classに移動
              //       ),
              //     );
              //     text = result;
              //     print(result);
              //   },
              // ),
        ),
      );
  }
}
