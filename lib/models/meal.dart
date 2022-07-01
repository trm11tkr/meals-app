import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'meal.freezed.dart';
part 'meal.g.dart';

enum Complexity {
  simple,
  challenging,
  hard
}

enum Affordability {
  affordable,
  pricey,
  luxurious
}

@freezed
class Meal with _$Meal {
  const factory Meal({
    required String id,
    required List<String> categories,
    required String title,
    required String imageUrl,
    required List<String> ingredients,
    required List<String> steps,
    required int duration,
    required Complexity complexity,
    required final Affordability affordability,
    required final bool isGlutenFree,
    required final bool isLactoseFree,
    required final bool isVegan,
    required final bool isVegetarian,
  }) = _Meal;

  factory Meal.fromJson(Map<String, dynamic> json) =>
      _$MealFromJson(json);
}