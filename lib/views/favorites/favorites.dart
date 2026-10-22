import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment/views/favorites/add_fav_posts.dart';

class FavoritesPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Favorites ')),
      body: FloatingActionButton(
        
        onPressed: () {
          Get.to(()=>AddFavPosts());
         
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
