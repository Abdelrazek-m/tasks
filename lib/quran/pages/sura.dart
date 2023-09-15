// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/quran.dart';

double t = 0;
AudioPlayer player = AudioPlayer();


class SuraPage extends StatefulWidget {
  const SuraPage({super.key, required this.id});
  final int id;
  
  @override
  State<SuraPage> createState() => _SuraPageState();
}

class _SuraPageState extends State<SuraPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> surad = sura[widget.id];
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff180B37),
        title: Text(
          surad['name'],
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              // width: double.infinity,
              color: Color(0xff8751FD),
            ),
          ),
          Image.asset(
            'assets/images/quran/masged.jpg',
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                color: Color.fromARGB(255, 24, 15, 53),
              ),
              Column(
                children: [
                  Slider(
                    value: t,
                    onChanged: (v) {
                      setState(() {
                        t = v;
                      });
                    },
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
