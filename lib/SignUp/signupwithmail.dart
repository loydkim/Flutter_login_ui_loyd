import 'package:flutter/material.dart';
import 'package:signupexample/SignUp/signupform.dart';
import 'package:signupexample/SignUp/signupimages.dart';
import 'package:signupexample/SignUp/signupintroduce.dart';


class SignUpWithMail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpWithMail();
}

class _SignUpWithMail extends State<SignUpWithMail> {

  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  PageController _pageController = PageController();

  String _nextText = 'Next';
  Color _nextColor = Colors.green[800];

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            Container(
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
                      child: Text('Create Account',
                        style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 500,
                    child: PageView(
                      onPageChanged: (int page) {
                        print('the pageView page is $page');
                        if (page == 2) {
                          setState(() {
                            _nextText = 'Submit';
                            _nextColor = Colors.blue[900];
                          });
                        }else {
                          setState(() {
                            _nextText = 'Next';
                            _nextColor = Colors.green[800];
                          });
                        }
                      },
                      controller: _pageController,
                      children: <Widget>[
                        SignUpForm(),
                        SignUpImages(),
                        SignUpIntroduce()
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
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Cancel',
                                  style: TextStyle(fontSize: 28),
                                ),
                              ],
                            ),
                            textColor: Colors.black,
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left:8.0,right: 8.0),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  _nextText,
                                  style: TextStyle(fontSize: 28),
                                ),
                              ],
                            ),
                            textColor: Colors.white,
                            color: _nextColor,
                            padding: EdgeInsets.all(10),
                            onPressed: () {
                              _pageController.animateToPage(_pageController.page.toInt()+1, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )
      ),
    );
  }
}