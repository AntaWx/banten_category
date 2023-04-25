import 'package:banten_apps/models/banten_models.dart';
import 'package:banten_apps/providers/favorites_banten_providers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/banten_detail.dart';

class DetailScreen extends ConsumerWidget {
  const DetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.bantenModels,
  });

  final String title;
  final List<String> description;
  final String image;
  final BantenModels bantenModels;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesBanten = ref.watch(favoritesBantenProfiders);

    final isFavorites = favoritesBanten.contains(bantenModels);

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
                final wasAdded = ref
                    .read(favoritesBantenProfiders.notifier)
                    .toggleBantenFavorit(bantenModels);
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(milliseconds: 900),
                    content: Text(
                      wasAdded
                          ? 'succes added to favorites'
                          : 'succes delete on favorites',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.symmetric(
                        vertical: Get.height * 0.43,
                        horizontal: Get.width * 0.26),
                    backgroundColor: Colors.amber,
                  ),
                );
              },
              icon: Icon(isFavorites ? Icons.star : Icons.star_border))
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