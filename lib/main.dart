import 'package:banten_apps/screens/categories.dart';
import 'package:banten_apps/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromRGBO(245, 249, 41, 1),
      brightness: Brightness.dark,
    ),
    textTheme: GoogleFonts.acmeTextTheme());

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      home: const TabsScreen(),
    );
  }
}
