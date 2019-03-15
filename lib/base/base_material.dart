import 'package:flutter/material.dart';

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /**
     * scaffold 容器布局
     * appBar: 显示在界面顶部的一个appbar
     * body： 当前界面显示的主要内容
     * floatingActionButton : 在Material 中定义的一个功能按钮
     * persistentFooterButtons: 固定在下方显示的按钮
     * drawer 侧边栏控件
     * bottomNavigationBar 显示在底部的导航栏按钮栏
     * backgroundColor 背景颜色
     * resizeToAvoidBottomPadding 控制界面内容body  是否重新布局来避免底部被覆盖了，比如当键盘显示的时候，重新布局避免被键盘盖住内容。默认值为 true。
     */
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null),
        title: new Text('example title'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search), tooltip: 'search', onPressed: null)
        ],
        backgroundColor: Colors.greenAccent,
      ),
      body: new Center(
        child: new Text('center'),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        tooltip: 'add',
        child: new Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      persistentFooterButtons: <Widget>[new Text('底部')],
    );
  }
}
