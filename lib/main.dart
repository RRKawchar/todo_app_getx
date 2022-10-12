import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:todo_app/app/data/services/storage/services.dart';
import 'package:todo_app/app/moduls/home/bindings.dart';
import 'package:todo_app/app/moduls/home/view.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  await GetStorage.init();

  await Get.putAsync(() =>  StorageServices().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo list using getX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: HomeBinding(),
      builder: EasyLoading.init(),
      home:const HomePage(),
    );
  }
}


