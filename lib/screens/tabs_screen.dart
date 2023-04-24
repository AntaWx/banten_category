import 'package:banten_apps/providers/favorites_banten_providers.dart';
import 'package:banten_apps/providers/filters_providers.dart';
import 'package:banten_apps/screens/banten_screen.dart';
import 'package:banten_apps/screens/categories.dart';
import 'package:banten_apps/screens/filters_screen.dart';
import 'package:banten_apps/widgets/drawer_main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const kInitialFilter = {
  Filter.sugihan: false,
  Filter.sebelumGalungan: false,
  Filter.setelahGalungan: false
};

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;

  void _onSelectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _onSelectedScreen(String identifier) async {
    Navigator.pop(context);
    if (identifier == 'jenis banten') {
      await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (context) => const FilterScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final availableBanten = ref.watch(filteredBantenProvider);

    Widget activePage = Categories(
      availableBanten: availableBanten,
    );

    var selectedPageTitle = 'Categories';
    if (_selectedPageIndex == 1) {
      final favoriteBanten = ref.watch(favoritesBantenProfiders);
      activePage = BantenScreen(
        banten: favoriteBanten,
      );
      selectedPageTitle = 'Favorites';
    }

    return Scaffold(
      appBar: AppBar(title: Text(selectedPageTitle)),
      body: activePage,
      drawer: Drawer(
          child: DrawerMain(
        onSelectScreen: _onSelectedScreen,
      )),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _onSelectedPage,
          currentIndex: _selectedPageIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.set_meal), label: 'category'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'favorit')
          ]),
    );
  }
}
