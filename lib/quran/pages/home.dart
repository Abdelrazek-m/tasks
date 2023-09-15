// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../models/quran.dart';
import '../widgets/sura_data.dart';

class QuranPage extends StatelessWidget {
  const QuranPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 01016612458
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 185, 162, 207),
        appBar: AppBar(
          title: const Text(
            'القرآن الكريم',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xff180B37),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.separated(
            itemBuilder: (btx,index)=> suraName(su:sura[index]),
            separatorBuilder: (btx, index) => SizedBox(height: 10),
            itemCount: sura.length,
          ),
        ),
      ),
    );
  }
}