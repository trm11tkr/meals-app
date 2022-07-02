import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget _buildListTile(String title, IconData iconData, VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(iconData, size: 26),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'KaiseiOpti',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Drawer(
      backgroundColor: const Color.fromRGBO(255, 254, 229, 1),
      child: Column(
        children: [
          Container(
            height: mediaQuery.size.height * 0.2,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'KaiseiOpti',
                fontWeight: FontWeight.w700,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _buildListTile('Meals', Icons.restaurant, () {
            context.go('/');
          }),
          _buildListTile('Filters', Icons.settings, () {
            context.go('/filters');
          }),
        ],
      ),
    );
  }
}
