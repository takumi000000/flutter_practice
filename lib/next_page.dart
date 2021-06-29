import 'package:flutter/material.dart';
import 'package:practice_flutt/main.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NextPage'),
      ),
      body: Container(
          height: double.infinity,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(name),
              Text(
                'I’d love it',
                style: TextStyle(
                  fontSize: 80,
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                ),
              ),
              Center(
                child: RaisedButton(
                  child: Text('Back Page'),
                  onPressed: () {
                    //ここに押したら反応するコードを書く
                    Navigator.pop(context, 'Wc Page');
                  },
                ),
              ),
            ],
          )
      ),
    );
  }
}