import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filters'),),
      drawer: MainDrawer(),
      body: Center(child: Text('Filter')),
    );
  }
}
