import 'package:flutter/material.dart';
import '../bloc/main_bloc.dart';

class BodyStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<BodyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        stream: MainBloc.clickStream.stream,
        builder: clickStreamBuilder,
      ),
    );
  }

  Widget clickStreamBuilder(BuildContext context, AsyncSnapshot snapshot) {
    if (snapshot.data == null)
      return new Container(
        width: 0.0,
        height: 0.0,
      );

    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      padding: const EdgeInsets.all(4.0),
      childAspectRatio: 1.0,
      children: snapshot.data.map<Widget>((String str) {
        return GridTile(
            child: Container(
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(10.0)),
          child: Center(
            child: Text(
              "$str",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ));
      }).toList(),
    );
  }
}
