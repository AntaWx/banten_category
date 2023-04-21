import 'package:banten_apps/models/banten_models.dart';
import 'package:flutter/material.dart';

import '../widgets/banten_detail.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.bantenModels,
    required this.onToogleFavorites,
  });

  final String title;
  final List<String> description;
  final String image;
  final BantenModels bantenModels;
  final void Function(BantenModels bantenModels) onToogleFavorites;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                onToogleFavorites(bantenModels);
              },
              icon: const Icon(Icons.star))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BantenDetail(
                title: title,
                description: description,
                image: image,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
