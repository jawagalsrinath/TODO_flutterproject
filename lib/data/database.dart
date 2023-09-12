import "package:hive_flutter/hive_flutter.dart";

class ToDoDataBase {
  List toDoList = [];
  final _myBox = Hive.box("mybox");

  void createInitialData() {
    toDoList = [
      ["Do Exercise", false],
      ["Attend official Meet", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
