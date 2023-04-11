import 'package:banten_apps/models/category.dart';
import 'package:banten_apps/util/generate_util/gusanta_util.dart';
import 'package:flutter/material.dart';

var availableCategory = [
  Category(
      id: RandomIntId().gusantaIdGen(),
      title: 'Galungan',
      color: Colors.orange),
  Category(
      id: RandomIntId().gusantaIdGen(), title: 'Kuningan', color: Colors.red),
  Category(
      id: RandomIntId().gusantaIdGen(),
      title: 'Pangerupukan',
      color: Colors.blue),
  Category(
      id: RandomIntId().gusantaIdGen(),
      title: 'Harian',
      color: Colors.blueAccent),
  Category(
      id: RandomIntId().gusantaIdGen(), title: 'Odalan', color: Colors.green),
  Category(
      id: RandomIntId().gusantaIdGen(),
      title: 'Saraswati',
      color: Colors.purple),
];
