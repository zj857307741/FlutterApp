import 'package:flutter/material.dart';

abstract class BlocBase {
  Future getData({String labelId, int page});

  Future onRefresh({String lableId});

  Future onLoadMore({String lableId});

  void dispose();
}

class BlocProvider<T extends BlocBase> extends StatefulWidget {
  final T bloc;
  final Widget child;
  final bool userDispose;

  BlocProvider({
    Key key,
    @required this.child,
    @required this.bloc,
    this.userDispose: true,
  }) : super(key: key);

  @override
  _BlocProviderState<T> createState() => _BlocProviderState<T>();

}

class _BlocProviderState<T> extends State<BlocProvider<BlocBase>>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return widget.child;
  }

  @override
  void dispose() {
    if(widget.userDispose) widget.bloc.dispose();
    // TODO: implement dispose
    super.dispose();
  }

}
