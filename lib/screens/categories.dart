import 'package:banten_apps/data/dummy_category.dart';
import 'package:banten_apps/models/category.dart';
import 'package:banten_apps/screens/banten_screen.dart';
import 'package:banten_apps/widgets/categories_grid.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  void _selectCategory(BuildContext context, Category category) {
    final filteredBanten = listOfBanten
        .where((banten) => banten.category.contains(category.id))
        .toList();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (ctx) =>
                BantenScreen(title: category.title, banten: filteredBanten)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pick your category'),
      ),
      body: GridView(
        padding: EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          ...availableCategory
              .map((category) => CategoriesGrid(
                    category: category,
                    onSelectCategory: () {
                      _selectCategory(context, category);
                    },
                  ))
              .toList()
        ],
      ),
    );
  }
}
