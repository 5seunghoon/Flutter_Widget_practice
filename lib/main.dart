import 'package:flutter/material.dart';
import 'bloc/main_bloc.dart';
import 'view/main_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final MainBloc _bloc = MainBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Icon(Icons.card_travel),
        ),
        body: Center(
          child: BodyStatefulWidget(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: _bloc.fabClick,
        ),
      ),
    );
  }
}
