import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment/widgets/round_button.dart';

class AddFavPosts extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final databaseRef = FirebaseDatabase.instance.ref('Likes');

    return Scaffold(
      appBar: AppBar(title: Text('Favorit Comments')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 30),
            TextFormField(
              maxLines: 2,
              controller: textController,
              decoration: InputDecoration(
                hintText: ' Add comment',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10),
            RoundButton(
              title: 'Add',
              onTap: () {
                databaseRef.child('5').set({
                  'tittle': textController.text.toString(),
                  'id': 1,
                  'name': "ali",
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Added Successfully"),
                    backgroundColor: Colors.green,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
