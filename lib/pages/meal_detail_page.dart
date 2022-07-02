import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealDetailPage extends StatelessWidget {
  const MealDetailPage({Key? key, required this.meal}) : super(key: key);

  final Meal meal;

  Widget _buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }

  Widget _buildSectionContainer(BuildContext context, Widget child) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
        height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.3,
        width: mediaQuery.size.width * 0.8,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: child);
  }

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
      body: SingleChildScrollView(
        child: Column(
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
            _buildSectionTitle(context, 'Ingredients'),
            _buildSectionContainer(
              context,
              ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Text(
                        meal.ingredients[index],
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  );
                },
                itemCount: meal.ingredients.length,
              ),
            ),
            _buildSectionTitle(context, 'Steps'),
            _buildSectionContainer(
              context,
              ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          child: Text(
                            '# ${(index + 1)}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        title: Text(
                          meal.steps[index],
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      const Divider(
                        height: 1,
                        thickness: 1.5,
                      ),
                    ],
                  );
                },
                itemCount: meal.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
