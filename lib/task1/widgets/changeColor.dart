
  import 'package:flutter/material.dart';

Container changeColor({required Color c, required bool active}) {
    return active
        ? Container(
            width: 35,
            height: 35,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(color: c),
              color: Colors.white.withOpacity(0),
              shape: BoxShape.circle,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: c,
                shape: BoxShape.circle,
              ),
            ),
          )
        : Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: c,
              shape: BoxShape.circle,
            ),
          );
  }