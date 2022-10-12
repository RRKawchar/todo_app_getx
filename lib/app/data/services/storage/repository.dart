import 'package:todo_app/app/data/models/tasks.dart';
import 'package:todo_app/app/data/providers/task/providers.dart';

class TaskRepository{

  TaskProvider taskProvider;
  TaskRepository({required this.taskProvider});

  List<Task> readTask()=> taskProvider.readTasks();
  void writeTask(List<Task> task) =>taskProvider.writeTasks(task);
}