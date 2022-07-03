import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../dummy_data.dart';

import '../models/meal.dart';

StateProvider<List<Meal>> mealProvider = StateProvider((ref) {
  final Map<String, bool> filters = ref.watch(filteringProvider);
  return DUMMY_MEALS.where((meal) {
    if (filters['gluten'] != null) {
      final bool gluten = filters['gluten'] as bool;
      final bool vegan = filters['vegan'] as bool;
      final bool vegetarian = filters['vegetarian'] as bool;
      final bool lactose = filters['lactose'] as bool;

      if (gluten && meal.isGlutenFree == false) {
        return false;
      }
      if (vegan && meal.isVegan == false) {
        return false;
      }
      if (vegetarian && meal.isVegetarian == false) {
        return false;
      }
      if (lactose && meal.isLactoseFree == false) {
        return false;
      }
    }
    return true;
  }).toList();
});

StateProvider<Map<String, bool>> filteringProvider = StateProvider(
  (_) {
    return {
      'gluten': false,
      'vegan': false,
      'vegetarian': false,
      'lactose': false,
    };
  },
);
