import 'dart:math';

import 'package:flutter/material.dart';
import '../form.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  int countNum;

    int Num(){

      return  this.countNum = Random().nextInt(49)+1;
    }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳轉到表單頁面並傳值"),
          onPressed: (){
            Navigator.of(context).push(//跳轉FormPage頁面
              MaterialPageRoute(
                builder: (context)=>FormPage(title: "我是跳轉傳值(隨機數:${Num()})",),
                //想要傳值,就是寫一個建構參數引用
              ),
            );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}
