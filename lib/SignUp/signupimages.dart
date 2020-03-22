import 'package:flutter/material.dart';

class SignUpImages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpImages();
}

class _SignUpImages extends State<SignUpImages> {
  @override
  Widget build(BuildContext context) {
    return
//      Container(
//      child:
      Padding(
        padding: const EdgeInsets.only(top:28.0,bottom:28.0),
        child: Column(

//        crossAxisAlignment: CrossAxisAlignment.stretch,

          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Select your photos',
                  style: TextStyle(fontSize: 26),),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new GestureDetector(
                        onTap: () {
                          print('touch t11');
                        },
                        child: Container(
                          width: 184,
                          height: 180,
                          child:Card(
                            child: Icon(Icons.add_photo_alternate,
                            size: 130,color: Colors.grey[700],),
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new GestureDetector(
                        onTap: () {
                          print('touch t11');
                        },
                        child: Container(
                          width: 184,
                          height: 180,
                          child:Card(
                            child: Icon(Icons.add_photo_alternate,
                              size: 130,color: Colors.grey[700],),
                          ),),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
//              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new GestureDetector(
                      onTap: () {
                        print('touch t11');
                      },
                      child: Container(
                        width: 184,
                        height: 180,
                        child:Card(
                          child: Icon(Icons.add_photo_alternate,
                            size: 130,color: Colors.grey[700],),
                        ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new GestureDetector(
                      onTap: () {
                        print('touch t11');
                      },
                      child: Container(
                        width: 184,
                        height: 180,
                        child:Card(
                          child: Icon(Icons.add_photo_alternate,
                            size: 130,color: Colors.grey[700],),
                        ),),
                    ),
                  ),
                ],
              ),
          ],
        ),
      );
//    );
  }
}