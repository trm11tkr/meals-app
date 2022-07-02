import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealDetailPage extends StatelessWidget {
  const MealDetailPage({Key? key, required this.meal}) : super(key: key);

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appBar = AppBar(
      title: Text(
        meal.title,
        style: Theme.of(context).appBarTheme.titleTextStyle,
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          SizedBox(
            height: (mediaQuery.size.height -
                    appBar.preferredSize.height -
                    mediaQuery.padding.top) *
                0.3,
            width: double.infinity,
            child: Image.network(
              meal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Ingredients',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Container(
            height: (mediaQuery.size.height -
                    appBar.preferredSize.height -
                    mediaQuery.padding.top) *
                0.3,
            width: mediaQuery.size.width * 0.8,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  color: Theme.of(context).colorScheme.secondary,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      meal.ingredients[index],
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                );
              },
              itemCount: meal.ingredients.length,
            ),
          )
        ],
      ),
    );
  }
}
