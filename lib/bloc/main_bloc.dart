import 'dart:async';

class MainBloc {
  static final StreamController<List<String>> clickStream = StreamController();
  List<String> _clickList = [];

  void fabClick() {
    _clickList.add("CLICK ${_clickList.length + 1}");
    clickStream.add(_clickList);
  }
}