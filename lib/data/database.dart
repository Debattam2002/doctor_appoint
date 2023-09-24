import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  final _mybox = Hive.box('mybox');

  void createInitialData() {
    
  }

  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  void updateData() {
    _mybox.put("TODOLIST", toDoList);
  }
}