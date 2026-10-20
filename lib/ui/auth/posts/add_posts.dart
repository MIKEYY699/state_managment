import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:state_managment/utils/utils.dart';
import 'package:state_managment/widgets/round_button.dart';

class AddPosts extends StatefulWidget {
  const new({super.key});

  @override
  State<AddPosts> createState() => _AddPostsState();
}

class _AddPostsState extends State<AddPosts> {
  final postconroller = TextEditingController();
  final databaseRef = FirebaseDatabase.instance.ref('Post');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Posts')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 30),
            TextFormField(
              controller: postconroller,

              decoration: InputDecoration(
                hintText: 'Whats up??',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            RoundButton(
              title: 'Add',
              onTap: () {
                databaseRef.child('1').set({"id": 1}).then((value){
                  Utils().toastMsg('post added');
                }).onError((error, stackTrace) {
                  Utils().toastMsg(error.toString());
                },);
              },
            ),
          ],
        ),
      ),
    );
  }
}
