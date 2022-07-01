import 'package:flutter/material.dart';

class CategoryMealsPage extends StatelessWidget {
  const CategoryMealsPage({Key? key}) : super(key: key);

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
