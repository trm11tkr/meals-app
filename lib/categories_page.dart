import 'package:flutter/material.dart';

import './dummy_data.dart';
import './category_item.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('グルメ')),
      body: GridView(
        padding: const EdgeInsets.all(5),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((catData) =>
                CategoryItem(title: catData.title, color: catData.color))
            .toList(),
      ),
    );
  }
}
