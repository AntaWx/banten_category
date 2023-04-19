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
          'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01811e4ca70ef66c3255d0684210b8df.jpg',
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
      description: [
        'Kamis Wage Sungsang disebut dengan parerebon atau yang lebih dikenal dengan Sugihan Jawa. Dinamakan sugihan jawa karena merupakan hari suci bagi para Bhatara untuk melakukan rerebu di sanggah dan parahyangan, yang disertai pangraratan dan pembersihan untuk Bhatara dengan kembang wangi. Orang yang memiliki kemampuan dalam hal tatwa akan melakukan yoga semadhi, pendeta akan melakukan pemujaan tertinggi, karena Bhatara pada hari ini turun ke dunia diiringi oleh para Dewa Pitara untuk persembahan hingga Galungan nanti.',
        'Rerebu atau marerebon ini bertujuan untuk menetralisir kekuatan negatif yang ada pada alam semesta atau Bhuana Agung.',
        'Pakreti nikang wwang, sasayut mwang tutwang, pangarad kasukan ngaranya.',
        'Sesajennya yaitu sesayut tutwan atau pangarad kasukan.',
      ]),
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
      description: ['not found']),
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
      description: ['description']),
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
      description: ['description']),
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
      description: ['description']),
];
