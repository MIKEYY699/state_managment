import 'package:flutter/material.dart';
import 'package:state_managment/ui/auth/posts/add_posts.dart';

class FavoritesPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FAvourite '), centerTitle: true),
      body: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPosts()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
