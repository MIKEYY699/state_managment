import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment/views/Home/number_controller.dart';

class Homeview extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NumberController>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Get.snackbar("title", "message");
          },
          child: Text("SnackBar"),
        ),
        ElevatedButton(
          onPressed: () {
            controller.increase();
          },
          child: Icon(Icons.add),
        ),
        Obx(() => Text(controller.n.toString())),

        ElevatedButton(
          onPressed: () {
            controller.decrease();
          },
          child: Icon(Icons.remove),
        ),
      ],
    );
  }
}
