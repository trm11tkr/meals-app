import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../dummy_data.dart';

import '../models/meal.dart';

StateProvider<List<Meal>> mealProvider = StateProvider((ref) {
  final Map<String, bool> filters = ref.watch(filteringProvider);
  return DUMMY_MEALS.where((meal) {
    if (filters['gluten'] ?? true && !meal.isGlutenFree) {
      return false;
    }
    if (filters['vegan'] ?? true && !meal.isGlutenFree) {
      return false;
    }
    if (filters['vegetarian'] ?? true && !meal.isGlutenFree) {
      return false;
    }
    if (filters['lactoseFree'] ?? true && !meal.isGlutenFree) {
      return false;
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
      'lactoseFree': false,
    };
  },
);
