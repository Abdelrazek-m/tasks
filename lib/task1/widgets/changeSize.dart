
  import 'package:flutter/material.dart';

Container changeSize({required String size,required bool active}) {
    return Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: active?Colors.orange: Colors.grey,
                        ),
                        child: Center(
                          child: Text(
                            size,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      );
  }