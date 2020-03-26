import 'package:flutter/material.dart';

Widget mainLogo() {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: new RawMaterialButton(
            onPressed: () {},
            child: FlutterLogo(
              size: 100,
            ),
            shape: new CircleBorder(),
            elevation: 2.0,
            fillColor: Colors.white,
            padding: const EdgeInsets.all(38.0),
          ),
        ),
      ],
    ),
  );
}