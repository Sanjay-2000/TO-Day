class Task {
  String name;
  bool isdone;
  Task({this.name, this.isdone});
  void toggleDone() {
    isdone = !isdone;
  }
}
