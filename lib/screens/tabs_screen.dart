import 'package:banten_apps/data/dummy_category.dart';
import 'package:banten_apps/models/banten_models.dart';
import 'package:banten_apps/screens/banten_screen.dart';
import 'package:banten_apps/screens/categories.dart';
import 'package:banten_apps/screens/filters_screen.dart';
import 'package:banten_apps/widgets/drawer_main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const kInitialFilter = {
  Filter.sugihan: false,
  Filter.sebelumGalungan: false,
  Filter.prioritas: false
};

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  final List<BantenModels> _favoritesBanten = [];
  Map<Filter, bool> _selectedFilter = kInitialFilter;

  void _onFavoritMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 900),
        content: Text(
          message,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.symmetric(
            vertical: Get.height * 0.42, horizontal: Get.width * 0.29),
        backgroundColor: Colors.amber,
      ),
    );
  }

  void _bantenFavorit(BantenModels bantenModels) {
    final isExisting = _favoritesBanten.contains(bantenModels);

    if (isExisting) {
      setState(() {
        _favoritesBanten.remove(bantenModels);
        _onFavoritMessage('succes delete favorit');
      });
    } else {
      setState(() {
        _favoritesBanten.add(bantenModels);
        _onFavoritMessage('succes add to favorit');
      });
    }
  }

  void _onSelectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _onSelectedScreen(String identifier) async {
    Navigator.pop(context);
    if (identifier == 'jenis banten') {
      final result = await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (context) => FilterScreen(currentFilter: _selectedFilter),
        ),
      );
      setState(() {
        _selectedFilter = result ?? kInitialFilter;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final availableBanten = listOfBanten.where((banten) {
      if (_selectedFilter[Filter.sugihan]! && !banten.sugihan) {
        return false;
      }
      return true;
    }).toList();

    Widget activePage = Categories(
      onToogleFavorit: _bantenFavorit,
      availableBanten: availableBanten,
    );

    var selectedPageTitle = 'Categories';
    if (_selectedPageIndex == 1) {
      activePage = BantenScreen(
        banten: _favoritesBanten,
        onToogleFavorit: _bantenFavorit,
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
