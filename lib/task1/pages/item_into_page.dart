// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/changeColor.dart';
import '../widgets/changeSize.dart';

class ItemInfoPage extends StatelessWidget {
  const ItemInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // fit: StackFit.expand,
        // clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromARGB(255, 140, 140, 140),
                  Color.fromARGB(255, 224, 224, 224),
                ],
              ),
            ),
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            children: [
              Expanded(child: Image.asset('assets/images/task1/man.png')),
              Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient: LinearGradient(
                    tileMode: TileMode.decal,
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 163, 163, 163),
                      Color.fromARGB(255, 231, 231, 231),
                    ],
                  ),
                ),
                height: 400,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sueded Bomber Jacket',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 15),
                    Text(
                      '''Fashion is a form of self-expression and
autonomy at a particular period & place
and in a specific context.''',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Color',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        changeColor(c: Colors.black, active: false),
                        SizedBox(width: 10),
                        changeColor(c: Colors.orange, active: true),
                        SizedBox(width: 10),
                        changeColor(c: Colors.red, active: false),
                        SizedBox(width: 10),
                        changeColor(c: Colors.blueAccent, active: false),
                        SizedBox(width: 10),
                        changeColor(c: Colors.indigoAccent, active: false),
                        SizedBox(width: 10),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Size',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        changeSize(size: 'XS', active: false),
                        SizedBox(width: 10),
                        changeSize(size: 'S', active: false),
                        SizedBox(width: 10),
                        changeSize(size: 'M', active: true),
                        SizedBox(width: 10),
                        changeSize(size: 'L', active: false),
                        SizedBox(width: 10),
                        changeSize(size: 'XL', active: false),
                        SizedBox(width: 10),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$69.95",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20),
                        ),
                        Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                                size: 18,
                              ),
                              Text(
                                "Add to cart",
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 50,
            left: 35,
            child: Icon(
              Icons.arrow_back,
            ),
          ),
          Positioned(
            top: 50,
            right: 35,
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 216, 216, 216),
              radius: 18,
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
