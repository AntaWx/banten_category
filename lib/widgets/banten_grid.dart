import 'package:banten_apps/models/banten_models.dart';
import 'package:flutter/material.dart';

import '../data/dummy_category.dart';

class BantenGrid extends StatelessWidget {
  const BantenGrid({super.key, required this.bantenModels});

  final BantenModels bantenModels;

  @override
  Widget build(BuildContext context) {
    List<BantenModels> bantenModelsList = listOfBanten;
    var index =
        bantenModelsList.indexWhere((element) => element.id == bantenModels.id);
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber,
        ),
        child: Text(
          bantenModelsList[index].name.toString(),
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
