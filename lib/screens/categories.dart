import 'package:banten_apps/data/dummy_category.dart';
import 'package:banten_apps/models/banten_models.dart';
import 'package:banten_apps/models/category.dart';
import 'package:banten_apps/screens/banten_screen.dart';
import 'package:banten_apps/widgets/categories_grid.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key, required this.availableBanten});
  final List<BantenModels> availableBanten;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _selectCategory(BuildContext context, Category category) {
    final filteredCategory = widget.availableBanten
        .where((banten) => banten.category.contains(category.id))
        .toList();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (ctx) => BantenScreen(
                  title: category.title,
                  banten: filteredCategory,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        child: GridView(
          padding: const EdgeInsets.all(24),
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
        builder: (context, child) => SlideTransition(
              position:
                  Tween(begin: const Offset(0, 0.4), end: const Offset(0, 0))
                      .animate(
                CurvedAnimation(
                    parent: _animationController, curve: Curves.easeInOut),
              ),
              child: child,
            ));
  }
}
