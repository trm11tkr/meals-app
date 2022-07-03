import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import './pages/tabs_page.dart';
import './dummy_data.dart';
import './models/meal.dart';
import './pages/category_meals_page.dart';
import './pages/meal_detail_page.dart';
import './config/my_theme_data.dart';
import './models/category.dart';
import './pages/filters_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        pageBuilder: (context, state) {
          return MaterialPage(
            key: state.pageKey,
            child: const TabPage(),
          );
        },
        routes: [
          GoRoute(
            name: 'category_meals',
            path: 'category_meals/:categoryId',
            pageBuilder: (context, state) {
              final category = _category(state.params['categoryId']!);
              return MaterialPage(
                child: CategoryMealsPage(category: category),
              );
            },
            routes: [
              GoRoute(
                name: 'meal_detail',
                path: 'meal_detail/:mealId',
                pageBuilder: (context, state) {
                  final Meal meal = _meal(state.params['mealId']!);
                  return MaterialPage(
                    child: MealDetailPage(meal: meal),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        name: 'filters',
        path: '/filters',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: FilterPage(),
          );
        },
      ),
    ],
    errorBuilder: (context, state) => MaterialApp(
      key: state.pageKey,
      home: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: myLightThemeData,
      darkTheme: myDarkThemeData,
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}

Category _category(String categoryId) {
  return DUMMY_CATEGORIES.where((category) => category.id == categoryId).first;
}

Meal _meal(String mealId) {
  return DUMMY_MEALS.where((meal) => meal.id == mealId).first;
}
