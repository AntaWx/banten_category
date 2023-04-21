import 'package:flutter/material.dart';

class DrawerMain extends StatelessWidget {
  const DrawerMain({super.key, required this.onSelectScreen});

  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Theme.of(context).colorScheme.onPrimaryContainer,
                Theme.of(context)
                    .colorScheme
                    .onPrimaryContainer
                    .withOpacity(0.8),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.library_books,
                  size: 48,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'filter banten',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.black),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.type_specimen,
              size: 24,
              color: Colors.white,
            ),
            title: Text(
              'filtered banten',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.white, fontSize: 24),
            ),
            onTap: () {
              onSelectScreen('jenis banten');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              size: 24,
              color: Colors.white,
            ),
            title: Text(
              'home',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.white, fontSize: 24),
            ),
            onTap: () {
              onSelectScreen('home');
            },
          ),
        ],
      ),
    );
  }
}
