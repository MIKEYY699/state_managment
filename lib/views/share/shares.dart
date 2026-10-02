import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment/views/Home/number_controller.dart';

class ShareScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final NumberController controller = Get.find<NumberController>();

    return Scaffold(
      appBar: AppBar(title: Text('ShareScreen'), centerTitle: true),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CustomContainer(
              controller: controller,
              title: 'title',
              image: 'lib/assets/images/image.png',
            ),
            SizedBox(height: 10),
            CustomContainer(
              controller: controller,
              title: 'title',
              image: 'lib/assets/images/image.png',
            ),
            CustomContainer(
              controller: controller,
              title: 'title',
              image: 'lib/assets/images/image.png',
            ),
            CustomContainer(
              controller: controller,
              title: 'title',
              image: 'lib/assets/images/image.png',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    required this.title,
    required this.image,
    required this.controller,
    super.key,
  });

  final String title;
  final String image;
  final NumberController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                color: const Color.fromARGB(255, 219, 216, 216),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            
            Positioned(
              top: 140,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: const Color.fromARGB(255, 248, 246, 246),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
