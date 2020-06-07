import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  String title;
  FormPage({this.title = "表單",Key key}) : super(key: key);

  @override
  _FormState createState() => _FormState(title: title);
}

class _FormState extends State<FormPage> {
  String title;
  _FormState({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.of(context).pop();//pop() 退出當前頁面
        },
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("我是表單頁面"),
          ),
          ListTile(
            title: Text("我是表單頁面"),
          ),
          ListTile(
            title: Text("我是表單頁面"),
          ),
          ListTile(
            title: Text("我是表單頁面"),
          ),
        ],
      ),
    );
  }
}