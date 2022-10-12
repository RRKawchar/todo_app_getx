import 'package:get/get.dart';
import 'package:todo_app/app/data/providers/task/providers.dart';
import 'package:todo_app/app/data/services/storage/repository.dart';
import 'package:todo_app/app/moduls/home/controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider()
        )
    ));
  }


}