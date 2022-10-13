import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/app/core/utils/extensions.dart';
import 'package:todo_app/app/data/models/tasks.dart';
import 'package:todo_app/app/moduls/home/controller.dart';
import 'package:todo_app/app/moduls/home/widget/add_card.dart';
import 'package:todo_app/app/moduls/home/widget/task_card.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(4.0.wp),
            child: Text(
              "My List",
              style: TextStyle(fontSize: 24.0.sp,fontWeight: FontWeight.bold),
            ),
          ),
          GridView.count(
              crossAxisCount: 2,
            shrinkWrap: true,
            physics:const ClampingScrollPhysics(),
            children: [
              ...controller.tasks.map((element) => TaskCard(task: element)).toList(),

             TaskCard(task: Task(title: "title", icon: 0xe59c, color: '#FF2B60E6')),

              AddCard()
            ],
          )
        ],
      )),
    );
  }
}
