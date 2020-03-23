import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {

  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.only(top:10,bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[400]),
        borderRadius: BorderRadius.all(
            Radius.circular(25.0)
        ),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:18.0,top: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Login',
              style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(13.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400]),
              borderRadius: BorderRadius.all(
                  Radius.circular(25.0)
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: 360,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.mail),
                        labelText: 'Email',
                        hintText: 'Type your email'
                    ),
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return 'Nickname is required';
                      }else {
                        return null;
                      }
                    },
                    controller: _emailTextController,
                  ),
                ),
                Divider(),
                SizedBox(
                  width: 360,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon:Icon(Icons.lock),
                        labelText: 'Password',
                        hintText: 'Type password'
                    ),
                    validator: (String value) {
                      if (value.trim().isEmpty) {
                        return 'Nickname is required';
                      }else {
                        return null;
                      }
                    },
                    controller: _passwordTextController,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0,right: 8.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12.0),
//                    side: BorderSide(color: Colors.red)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Sign in',
                          style: TextStyle(fontSize: 28),
                        ),
                      ],
                    ),
                    textColor: Colors.white,
                    color: Colors.green[700],
                    padding: EdgeInsets.all(10),
                    onPressed: () {

                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}