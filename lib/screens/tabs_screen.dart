import 'package:banten_apps/screens/banten_screen.dart';
import 'package:banten_apps/screens/categories.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _onSelectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const Categories();
    var selectedPageTitle = 'Categories';

    if (_selectedPageIndex == 1) {
      activePage = const BantenScreen(banten: []);
      selectedPageTitle = 'Favorites';
    }

    return Scaffold(
      appBar: AppBar(title: Text(selectedPageTitle)),
      body: activePage,
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
