import 'package:banten_apps/data/dummy_category.dart';
import 'package:riverpod/riverpod.dart';

var bantenProvider = Provider((ref) {
  return listOfBanten;
});
