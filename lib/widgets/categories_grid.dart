import 'package:banten_apps/data/dummy_category.dart';
import 'package:banten_apps/screens/banten_screen.dart';
import 'package:flutter/material.dart';

import 'package:banten_apps/models/category.dart';

import '../models/banten_models.dart';

class CategoriesGrid extends StatefulWidget {
  const CategoriesGrid({super.key, required this.category});

  final Category category;

  @override
  State<CategoriesGrid> createState() => _CategoriesGridState();
}

class _CategoriesGridState extends State<CategoriesGrid> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        List<BantenModels> bantenList = listOfBanten;
        List<Category> category = availableCategory;
        var index = category.indexWhere((cat) => cat.id == widget.category.id);
        if (index >= 0 && index < category.length) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BantenScreen(
                banten: bantenList,
                title: category[index].title,
              ),
            ),
          );
        }
      },
      splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            widget.category.color.withOpacity(0.55),
            widget.category.color.withOpacity(0.9)
          ], begin: Alignment.bottomLeft, end: Alignment.bottomRight),
        ),
        child: Text(
          widget.category.title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      ),
    );
  }
}