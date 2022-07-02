import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filters'),),
      drawer: MainDrawer(),
      body: Center(child: Text('Filter')),
    );
  }
}
