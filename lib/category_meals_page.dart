import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('category page'),
      ),
      body: Center(
        child: Text("nothing", style: Theme.of(context).textTheme.bodyLarge,),
      ),
    );
  }
}
