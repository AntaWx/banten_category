import 'package:flutter/material.dart';

import 'package:banten_apps/models/category.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          category.color.withOpacity(0.55),
          category.color.withOpacity(0.9)
        ], begin: Alignment.bottomLeft, end: Alignment.bottomRight),
      ),
      child: Text(
        category.title,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Theme.of(context).colorScheme.onBackground),
      ),
    );
  }
}
