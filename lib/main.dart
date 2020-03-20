import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  void dispose() {
    emailTextController.dispose();
    passwordTextController.dispose();
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
              Expanded(
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
              ),
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
                              controller: emailTextController,
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

                              controller: passwordTextController,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 360,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(12.0),
//                    side: BorderSide(color: Colors.red)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '  Sign in',
                              style: TextStyle(fontSize: 28),
                            ),
                          ],
                        ),
                        textColor: Colors.white,
                        color: Colors.green[700],
                        padding: EdgeInsets.all(10),
                        onPressed: () {
//                  signUpWithMail();
                        },
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.all(4.0),
                padding: const EdgeInsets.only(top:10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey[400]),
                  borderRadius: BorderRadius.all(
                      Radius.circular(25.0)
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 20),
                      child: Row(
                        children: <Widget>[
                          Expanded(child: Divider(thickness: 2)),
                          Text(" Sign Up ",
                            style: TextStyle(fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700]),),
                          Expanded( child: Divider(thickness: 2,)),
                        ]
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: new RawMaterialButton(
                            onPressed: () {},
                            child: new Icon(
                              Icons.mail,
                              color: Colors.white,
                              size: 50.0,
                            ),
                            shape: new CircleBorder(),
                            elevation: 2.0,
                            fillColor: Colors.redAccent,
                            padding: const EdgeInsets.all(15.0),
                          ),
                          margin: EdgeInsets.only(left: 10,right: 10, bottom: 14),
                        ),
                        Container(
                          child: new RawMaterialButton(
                            onPressed: () {},
                            child: Text('f',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 56,fontWeight: FontWeight.bold),),
                            shape: new CircleBorder(),
                            elevation: 2.0,
                            fillColor: Colors.blue[900],
                            padding: const EdgeInsets.all(8.0),
                          ),
                          margin: EdgeInsets.only(left: 10,right: 10, bottom: 14),
                        ),
                        Container(
                          child: new RawMaterialButton(
                            onPressed: () {},
                            child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/64px-Google_%22G%22_Logo.svg.png',
                            fit: BoxFit.cover,
                            width: 40,
                            height: 40,),
                            shape: new CircleBorder(),
                            elevation: 2.0,
                            fillColor: Colors.white,
                            padding: const EdgeInsets.all(22.0),
                          ),
                          margin: EdgeInsets.only(left: 10,right: 10, bottom: 14),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
