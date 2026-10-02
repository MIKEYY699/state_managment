import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:state_managment/views/Home/number_controller.dart';
import 'package:state_managment/views/favorites/favorites.dart';

class MyHomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    NumberController numberController = Get.put(NumberController());

    return Scaffold(
      body: Column(
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
              numberController.increase();
            },
            child: Icon(Icons.add),
          ),
          Obx(() => Text(numberController.n.toString())),

          ElevatedButton(
            onPressed: () {
              numberController.decrease();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOme'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'FAvourites',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.share), label: 'Share'),
        ],
        
      ),
    );
  }
}
