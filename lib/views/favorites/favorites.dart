import 'package:flutter/material.dart';

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
            MaterialPageRoute(builder: (context) => FlutterLogo()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
