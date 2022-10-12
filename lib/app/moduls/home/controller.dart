import 'package:get/get.dart';
import 'package:todo_app/app/data/models/tasks.dart';
import 'package:todo_app/app/data/services/storage/repository.dart';

class HomeController extends GetxController{

  TaskRepository taskRepository;
  HomeController({required this.taskRepository});


  final tasks=<Task>[].obs;
  
  @override
  void onInit() {
    tasks.assignAll(taskRepository.readTask());
    ever(tasks, (_) => taskRepository.writeTask(tasks));
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}