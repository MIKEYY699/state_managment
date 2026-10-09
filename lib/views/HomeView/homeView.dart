import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment/views/Home/model.dart';
import 'package:state_managment/views/Home/number_controller.dart';

class Homeview extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.find<NumberController>();
    final controller1 = Get.find<UiController>();

    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(controller1.showroom.image ?? ''),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(controller1.showroom.name ?? ""),
                  Text(controller1.showroom.ratting.toString()),
                  Text(controller1.showroom.distance ?? ''),
                ],
              ),
              SizedBox(width: 120),
              Icon(Icons.favorite, color: Colors.red),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Services",
            style: TextStyle(fontSize: 20, fontFamily: 'urbanist'),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 130,
            child: ListView.builder(
              itemCount: controller1.services.length,
              scrollDirection: .horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 250,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        children: [
                          Text(controller1.services[index].name ?? ''),
                          SizedBox(width: 60),
                          Text(controller1.services[index].time ?? ''),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        controller1.services[index].discription ?? '',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 107, 105, 105),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(controller1.services[index].price ?? ''),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Text('About', style: TextStyle(fontSize: 20)),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(controller1.about[0].discription ?? ''),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 20),
                    Text(controller1.about[0].location ?? ''),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.watch),
                    SizedBox(width: 20),
                    Text(controller1.about[0].time ?? ''),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 20),
                    Text(controller1.about[0].number ?? ""),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text('Reviews', style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          ListView.builder(
            itemCount: controller1.review.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 12),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          child: Image.asset(
                            controller1.review[index].image ?? "",
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(controller1.review[index].name ?? ''),
                            Text(controller1.review[index].time ?? ''),
                          ],
                        ),
                      ],
                    ),
                    Text(controller1.review[index].discription ?? ""),
                  ],
                ),
              );
            },
          ),
        ],

        // mainAxisAlignment: MainAxisAlignment.center,
        // children: [
        //   ElevatedButton(
        //     onPressed: () {
        //       Get.snackbar("title", "message");
        //     },
        //     child: Text("SnackBar"),
        //   ),
        //   ElevatedButton(
        //     onPressed: () {
        //       controller.increase();
        //     },
        //     child: Icon(Icons.add),
        //   ),
        //   Obx(() => Text(controller.n.toString())),

        //   ElevatedButton(
        //     onPressed: () {
        //       controller.decrease();
        //     },
        //     child: Icon(Icons.remove),
        //   ),
        //   Expanded(
        //     child: ListView.builder(
        //       itemCount: controller.order.length,
        //       itemBuilder: ((context, index) {
        //         return Card(
        //           child: ListTile(
        //             title: Text(controller.order[index].name ?? "N/A"),
        //             leading: Text(controller.order[index].id.toString() ?? "N/A"),
        //             subtitle: Text(
        //               controller.order[index].number.toString() ?? "N/A",
        //             ),
        //           ),
        //         );
        //       }),
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
