class Task {
  final String _name;
  final DateTime _finishedTime;
  final bool _isFinished;

  Task({
    required String name,
    required DateTime finishedTime,
    required bool isFinished,
  })  : _name = name,
        _finishedTime = finishedTime,
        _isFinished = isFinished;
}
