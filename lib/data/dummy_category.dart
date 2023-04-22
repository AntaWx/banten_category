import 'package:banten_apps/models/banten_models.dart';
import 'package:banten_apps/models/category.dart';
import 'package:banten_apps/records.dart/record.dart';
import 'package:banten_apps/util/generate_util/gusanta_util.dart';
import 'package:flutter/material.dart';

var availableCategory = [
  const Category(id: '1', title: 'Galungan', color: Colors.orange),
  const Category(id: '2', title: 'Kuningan', color: Colors.red),
];

var listOfBanten = [
  BantenModels(
      id: RandomIntId().gusantaIdGen().toString(),
      category: ['1', '2'],
      name: Type.jawa.toRecord().name,
      imageUrl:
          'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01811e4ca70ef66c3255d0684210b8df.jpg',
      sugihan: true,
      sebelumGalungan: true,
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
      name: Type.bali.toRecord().name,
      imageUrl:
          'https://th.bing.com/th/id/R.1f90123343228314ac321192ffa5706d?rik=oxJQxv1us%2fZb5w&riu=http%3a%2f%2fmenyali-buleleng.desa.id%2fassets%2ffiles%2fartikel%2fsedang_15634169041.jpg&ehk=n6cR0v1ILy9f6AnbEqvkwCfaIKci4roCqrGmwWFLptE%3d&risl=&pid=ImgRaw&r=0',
      sugihan: true,
      sebelumGalungan: true,
      ingredients: ['not found'],
      listBanten: ['Sesodan'],
      executionTime: Execution.sebelum.toRecord().time,
      dificulty: DificultyEnum.normal.toRecord().dificult,
      affordability: AffordabilityEnum.affordable.toRecord().affordability,
      description: [
        'Sugihan Bali merupakan hari penyucian terhadap alam mikrokosmos atau bhuana alit. Melansir laman resmi PHDI, Sugihan Bali berasal dari kata sugi yang berarti membersikan dan Bali yang berarti kekuatan yang ada dalam diri',
        'Prosesi pembersihan menjelang Hari Raya Galungan itu dilakukan secara sekala dan niskala, baik lahir dan batin. Sugihan Bali juga menjadi momen yang baik untuk melakukan penglukatan, sarananya dapat menggunakan bungkak nyuh gading'
            'Lontar Sundarigama menjelaskan, Sugihan Bali sebagai kalinggania amrestista raga tawulan. Artinya, penyucian badan jasmani dan rohani atau bhuana alit dilakukan dengan memohon tirtha pembersihan atau penglukatan',
        'Dra Ni Made Sri Arwati dalam buku Hari Raya Galungan (1992) menjelaskan, tidak ada upacara khusus saat pelaksanaan Sugihan Bali. Umat dapat memohon tirtha pengelukatan kepada Sang Sadaka atau Sulinggih. Selebihnya, perayaan Sugihan Bali dilakukan dengan persembahyangan sebagaimana saat hari-hari Kliwon lainnya',
        'Selain penglukatan, Sugihan Bali juga menjadi waktu yang baik untuk melakukan yoga semadi. Tujuannya untuk mulat sarira atau introspeksi diri dan menahan diri dari segala macam godaan indria',
        'Seperti halnya Sugihan Jawa, prosesi saat Sugihan Bali dapat dilakukan sesuai desa, kala, patra (tempat, waktu, keadaan). Itu sebabnya, prosesi perayaan Sugihan Bali di Bali bisa saja berbeda antara daerah satu dengan yang lainnya'
      ]),
  BantenModels(
      id: RandomIntId().gusantaIdGen().toString(),
      category: ['1', '2'],
      name: BantenSebelum.penyajan.toRecord().name,
      imageUrl:
          'https://thesmartlocal.com/indonesia/wp-content/uploads/2020/09/galungan-festival-5.jpg',
      sugihan: false,
      sebelumGalungan: true,
      ingredients: ['not found'],
      listBanten: ['not found'],
      executionTime: Execution.sebelum.toRecord().time,
      dificulty: DificultyEnum.normal.toRecord().dificult,
      affordability: AffordabilityEnum.affordable.toRecord().affordability,
      description: [
        'Penyajan berasal dari istilah Saja yang dalam bahasa Bali artinya serius, benar. Japada hari penyajan ini mempunyai filosofis buat memantapkan diri buat merayakan hari raya Galungan. Pada hari ini umat akan digoda oleh sang Bhuta Dungulan buat menguji sejauh mana taraf pengendalian diri umat Hindu untuk melangkah lebih dekat lagi menuju Galungan. Hari ini dirayakan setiap Senin Pon wuku Dungulan.'
      ]),
  BantenModels(
      id: RandomIntId().gusantaIdGen().toString(),
      category: ['1', '2'],
      name: BantenSebelum.penampan.toRecord().name,
      imageUrl:
          'https://th.bing.com/th/id/R.e684312276bf44758603b8be25c91451?rik=2r%2fWi26OdzAMwg&riu=http%3a%2f%2f4.bp.blogspot.com%2f-C7hk-oCiwaA%2fUjnuGKUnKGI%2fAAAAAAAACq0%2fd213zyoJG2Q%2fs1600%2fnampah.jpg&ehk=bmDS%2fYgF%2bjPY4CNsttxdMLSf489woBZEDJEo1Cs%2fSjY%3d&risl=&pid=ImgRaw&r=0',
      sugihan: false,
      sebelumGalungan: true,
      ingredients: ['not found'],
      listBanten: ['not found'],
      executionTime: Execution.sebelum.toRecord().time,
      dificulty: DificultyEnum.normal.toRecord().dificult,
      affordability: AffordabilityEnum.affordable.toRecord().affordability,
      description: [
        'Penampahan berasal dari kata tampah atau sembelih adalah bahwa pada hari ini manusia melakukan pertempuran melawan Adharma, atau hari buat mengalahkan Bhuta Galungan dengan upacara utama Mabyakala yaitu; membayar kepada Bhuta Kala. Makna sesungguhnya berasal hari penampahan ini merupakan membunuh sifat-sifat kebinatangan yang ada pada diri, bukan semata-mata membunuh binatang korban, karena musuh sebenarnya ada didalam diri, bukan di luar dan termasuk sifat hewani tersebut.'
      ]),
  BantenModels(
      id: RandomIntId().gusantaIdGen().toString(),
      category: ['1', '2'],
      name: BantenSebelum.manis.toRecord().name,
      imageUrl:
          'https://th.bing.com/th/id/OIP.OkrWehtIHOIsWsqDiwsUOQHaE6?pid=ImgDet&rs=1',
      sugihan: false,
      sebelumGalungan: false,
      setelahGalungan: true,
      ingredients: ['not found'],
      listBanten: ['not found'],
      executionTime: Execution.sesudah.toRecord().time,
      dificulty: DificultyEnum.normal.toRecord().dificult,
      affordability: AffordabilityEnum.affordable.toRecord().affordability,
      description: [
        'Pada umanis Galungan, umat akan melaksanakan persembahyangan serta dilanjutkan dengan Dharma Santi serta saling mengunjungi sanak saudara atau tempat rekreasi. Anak-anak akan melakukan tradisi ngelawang di hari ini. Ngelawang artinya sebuah tradisi, di mana anak-anak akan menarikan barong disertai gambelan berasal pintu rumah penduduk satu ke yg lainnya (lawang ke lawang), penduduk yang mempunyai tempat tinggal tersebut kemudian akan keluar berasal tempat tinggal sambil membawa canang serta sesari/uang, penduduk percaya bahwa menggunakan tarian barong ini bisa mengusir segala aura negatif dan mendatangkan aura positif. Umanis Galungan jatuh di hari Kamis Umanis wuku Dungulan.'
      ]),
];
