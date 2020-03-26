import 'package:flutter/material.dart';
import 'package:signupexample/SignIn/mainlogo.dart';
import 'package:signupexample/SignIn/signin.dart';
import 'package:signupexample/SignIn/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signupexample/userscreen/userscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _isLogin = false;
  _checkLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLogin = (prefs.get('isLogin') ?? false);

    setState(() {
      _isLogin = isLogin;
    });

    print('prefs $isLogin');
  }

  @override
  void initState() {
    _checkLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return !_isLogin ? _signInWidget() : UserScreen();
  }

  Widget _signInWidget() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage('https://cdn.pixabay.com/photo/2020/03/19/04/58/coconut-trees-4946270_1280.jpg'),
                fit: BoxFit.fill)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              mainLogo(),
              SignIn(),
              SignUp()
            ],
          ),
        ),
      ),
    );
  }
}
