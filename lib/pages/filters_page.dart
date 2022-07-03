import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/provider/meal_provider.dart';

import '../widgets/main_drawer.dart';

class FilterPage extends ConsumerWidget {
  const FilterPage({Key? key}) : super(key: key);

  Widget _buildSwitchListTile(BuildContext context, WidgetRef ref, String title,
      String description, bool currentValue, Map<String, bool> filters) {
    return SwitchListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      subtitle: Text(
        description,
        style: Theme.of(context).textTheme.labelSmall,
      ),
      value: currentValue,
      onChanged: (newValue) {
        filters.update(title, (value) => newValue);
        final Map<String, bool> newFilter = {...filters};
        ref.watch(filteringProvider.state).state = newFilter;
      },
      activeColor: Theme.of(context).colorScheme.primary,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Map<String, bool> filters = ref.watch(filteringProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final String key = filters.keys.elementAt(index);
                final bool currentValue = filters[key] ?? false;
                return _buildSwitchListTile(
                    context, ref, key, 'description', currentValue, filters);
              },
              itemCount: filters.length,
            ),
          ),
        ],
      ),
    );
  }
}
