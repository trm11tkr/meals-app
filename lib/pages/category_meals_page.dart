import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/category.dart';
import '../models/meal.dart';
import '../dummy_data.dart';
import '../widgets/meal_item.dart';
import '../provider/meal_provider.dart';

class CategoryMealsPage extends ConsumerWidget {
  const CategoryMealsPage({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Meal> categoryMeals = ref.watch(mealProvider).where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              meal: categoryMeals[index],
              currentCategoryId: category.id,
            );
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
