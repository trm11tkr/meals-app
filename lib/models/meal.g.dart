// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Meal _$$_MealFromJson(Map<String, dynamic> json) => _$_Meal(
      id: json['id'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      steps: (json['steps'] as List<dynamic>).map((e) => e as String).toList(),
      duration: json['duration'] as int,
      complexity: $enumDecode(_$ComplexityEnumMap, json['complexity']),
      affordability: $enumDecode(_$AffordabilityEnumMap, json['affordability']),
      isGlutenFree: json['isGlutenFree'] as bool,
      isLactoseFree: json['isLactoseFree'] as bool,
      isVegan: json['isVegan'] as bool,
      isVegetarian: json['isVegetarian'] as bool,
    );

Map<String, dynamic> _$$_MealToJson(_$_Meal instance) => <String, dynamic>{
      'id': instance.id,
      'categories': instance.categories,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'ingredients': instance.ingredients,
      'steps': instance.steps,
      'duration': instance.duration,
      'complexity': _$ComplexityEnumMap[instance.complexity],
      'affordability': _$AffordabilityEnumMap[instance.affordability],
      'isGlutenFree': instance.isGlutenFree,
      'isLactoseFree': instance.isLactoseFree,
      'isVegan': instance.isVegan,
      'isVegetarian': instance.isVegetarian,
    };

const _$ComplexityEnumMap = {
  Complexity.simple: 'simple',
  Complexity.challenging: 'challenging',
  Complexity.hard: 'hard',
};

const _$AffordabilityEnumMap = {
  Affordability.affordable: 'affordable',
  Affordability.pricey: 'pricey',
  Affordability.luxurious: 'luxurious',
};
