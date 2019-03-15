import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  // Widget子类中的字段往往都会定义为final
  final Widget title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 100.0, // 单位是逻辑上的像素,并非真实的像素，类似于浏览器中的像素
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.red[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: null),
          new Expanded(child: title),
          new IconButton(
              icon: new Icon(Icons.search), tooltip: 'Search', onPressed: null)
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              'Example text',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          new Expanded(
              child: new Center(
            child: new Text('Hello world'),
          ))
        ],
      ),
    );
  }
}
