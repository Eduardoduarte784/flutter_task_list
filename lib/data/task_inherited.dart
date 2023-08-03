import 'package:flutter/material.dart';
import 'package:flutter_task_list/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  static const String pathToImages = 'assets/images/';

  final List<Task> taskList = [
    Task('Aprender Flutter', '${pathToImages}flutter.png', 3),
    Task('Andar de Bike', '${pathToImages}bike.webp', 2),
    Task('Meditar', '${pathToImages}meditar.jpeg', 5),
    Task('Ler', '${pathToImages}ler.jpg', 4),
    Task('Jogar', '${pathToImages}jogar.jpg', 1),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
