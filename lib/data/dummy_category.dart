import 'package:banten_apps/models/banten_models.dart';
import 'package:banten_apps/models/category.dart';
import 'package:banten_apps/records.dart/record.dart';
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

var listOfBanten = [
  BantenModels(
      id: RandomIntId().gusantaIdGen(),
      name: Type.jawa.toRecord().name,
      sugihan: Type.jawa,
      ingredients: [
        'busung',
        'tamas',
        'raka tamas',
      ],
      listBanten: ['Sesodan'],
      sebelumGalungan: true,
      sesudahGalungan: false,
      description: 'description'),
  BantenModels(
      id: RandomIntId().gusantaIdGen(),
      name: BantenSebelum.pengerebuan.toRecord().name,
      sugihan: Type.bukan,
      ingredients: ['not found'],
      listBanten: [
        'banten sodan',
        'sampian pengambean',
        'tipat sari bagia',
        'peras tulungan',
        'kojong rasmen',
        'raka',
        'tumpeng'
      ],
      sebelumGalungan: true,
      sesudahGalungan: false,
      description: 'description'),
  BantenModels(
      id: RandomIntId().gusantaIdGen(),
      name: Type.bali.toRecord().name,
      sugihan: Type.bali,
      ingredients: ['not found'],
      listBanten: ['Sesodan'],
      sebelumGalungan: true,
      sesudahGalungan: false,
      description: 'description'),
  BantenModels(
      id: RandomIntId().gusantaIdGen(),
      name: BantenSebelum.penampan.toRecord().name,
      sugihan: Type.bukan,
      ingredients: ['not found'],
      listBanten: ['not found'],
      sebelumGalungan: true,
      sesudahGalungan: false,
      description: 'description'),
  BantenModels(
      id: RandomIntId().gusantaIdGen(),
      name: BantenSebelum.penampan.toRecord().name,
      sugihan: Type.bukan,
      ingredients: ['not found'],
      listBanten: ['not found'],
      sebelumGalungan: true,
      sesudahGalungan: false,
      description: 'description'),
];
