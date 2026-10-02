import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment/views/Home/model.dart';
import 'package:state_managment/views/Home/number_controller.dart';

class Homeview extends StatelessWidget {
  new({super.key});
 
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
        Expanded(
          child: ListView.builder(
            itemCount: controller.order.length,
            itemBuilder: ((context, index) {
              return Card(
                child: ListTile(
                  title: Text(controller. order[index].name ?? "N/A"),
                  leading: Text(controller. order[index].id.toString() ?? "N/A"),
                  subtitle: Text(controller. order[index].number.toString() ?? "N/A"),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
