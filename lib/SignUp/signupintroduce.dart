import 'package:flutter/material.dart';

class SignUpIntroduce extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpIntroduce();
}

class _SignUpIntroduce extends State<SignUpIntroduce> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:28.0,bottom:28.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: 380,
            height: 440,
            child: Card(child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type about you'
                  ),
                ),
              )
            )
          ),
        ],
      ),
    );
  }
}