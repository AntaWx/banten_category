import 'package:banten_apps/models/banten_models.dart';
import 'package:banten_apps/models/category.dart';
import 'package:banten_apps/records.dart/record.dart';
import 'package:banten_apps/util/generate_util/gusanta_util.dart';
import 'package:flutter/material.dart';

var availableCategory = [
  const Category(id: '1', title: 'Galungan', color: Colors.orange),
  const Category(id: '2', title: 'Kuningan', color: Colors.red),
  const Category(id: '3', title: 'Pangerupukan', color: Colors.blue),
  const Category(id: '4', title: 'Harian', color: Colors.blueAccent),
  const Category(id: '5', title: 'Odalan', color: Colors.green),
  const Category(id: '6', title: 'Saraswati', color: Colors.purple),
];

var listOfBanten = [
  BantenModels(
      id: RandomIntId().gusantaIdGen().toString(),
      category: ['1', '2'],
      name: Type.jawa.toRecord().name,
      imageUrl:
          'https://image.freepik.com/free-vector/404-error-abstract-concept-illustration_335657-2243.jpg',
      sugihan: Type.jawa,
      ingredients: [
        'busung',
        'tamas',
        'raka tamas',
      ],
      listBanten: ['Sesodan'],
      executionTime: Execution.sebelum.toRecord().time,
      dificulty: DificultyEnum.normal.toRecord().dificult,
      affordability: AffordabilityEnum.affordable.toRecord().affordability,
      description: 'description'),
  BantenModels(
      id: RandomIntId().gusantaIdGen().toString(),
      category: ['1', '2'],
      name: BantenSebelum.pengerebuan.toRecord().name,
      imageUrl:
          'https://image.freepik.com/free-vector/404-error-abstract-concept-illustration_335657-2243.jpg',
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
      executionTime: Execution.sebelum.toRecord().time,
      dificulty: DificultyEnum.normal.toRecord().dificult,
      affordability: AffordabilityEnum.affordable.toRecord().affordability,
      description: 'not found'),
  BantenModels(
      id: RandomIntId().gusantaIdGen().toString(),
      category: ['1', '2'],
      name: Type.bali.toRecord().name,
      imageUrl:
          'https://image.freepik.com/free-vector/404-error-abstract-concept-illustration_335657-2243.jpg',
      sugihan: Type.bali,
      ingredients: ['not found'],
      listBanten: ['Sesodan'],
      executionTime: Execution.sebelum.toRecord().time,
      dificulty: DificultyEnum.normal.toRecord().dificult,
      affordability: AffordabilityEnum.affordable.toRecord().affordability,
      description: 'description'),
  BantenModels(
      id: RandomIntId().gusantaIdGen().toString(),
      category: ['1', '2'],
      name: BantenSebelum.penyajan.toRecord().name,
      imageUrl:
          'https://image.freepik.com/free-vector/404-error-abstract-concept-illustration_335657-2243.jpg',
      sugihan: Type.bukan,
      ingredients: ['not found'],
      listBanten: ['not found'],
      executionTime: Execution.sebelum.toRecord().time,
      dificulty: DificultyEnum.normal.toRecord().dificult,
      affordability: AffordabilityEnum.affordable.toRecord().affordability,
      description: 'description'),
  BantenModels(
      id: RandomIntId().gusantaIdGen().toString(),
      category: ['1', '2'],
      name: BantenSebelum.penampan.toRecord().name,
      imageUrl:
          'https://image.freepik.com/free-vector/404-error-abstract-concept-illustration_335657-2243.jpg',
      sugihan: Type.bukan,
      ingredients: ['not found'],
      listBanten: ['not found'],
      executionTime: Execution.sebelum.toRecord().time,
      dificulty: DificultyEnum.normal.toRecord().dificult,
      affordability: AffordabilityEnum.affordable.toRecord().affordability,
      description: 'description'),
];
