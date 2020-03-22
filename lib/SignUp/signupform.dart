import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpForm();
}
enum SingingCharacter { lafayette, jefferson }
class _SignUpForm extends State<SignUpForm> {

  bool _agreedToTOS = false;
  SingingCharacter _character = SingingCharacter.lafayette;

  DateTime selectedDate = DateTime.now();
  String selectDate = 'Select your birthday';

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1930, 8),

        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        selectDate = "${selectedDate.toLocal()}".split(' ')[0];
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
            ),
          ),
          _signUpWidget()
        ],
      ),
    );
  }



  Widget _signUpWidget() {
    return Column(
      children: <Widget>[
        Divider(),
        SizedBox(
          width: 360,
          child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                icon:Icon(Icons.account_circle),
                labelText: 'Name',
                hintText: 'Type password'
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Nickname is required';
              }else {
                return null;
              }
            },
          ),
        ),
        Divider(),
        Row(
          children: <Widget>[
          Icon(Icons.wc,color: Colors.grey,),
              Radio(
                value: SingingCharacter.lafayette,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
              new GestureDetector(
                onTap: () {
                  setState(() {
                    _character = SingingCharacter.lafayette;
                  });
                },
                child: Text('Man'),
              ),
              SizedBox(width: 20,),
              Radio(
                value: SingingCharacter.jefferson,
                groupValue: _character,
                onChanged: (SingingCharacter value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
              new GestureDetector(
                  onTap: () {
                    setState(() {
                      _character = SingingCharacter.jefferson;
                    });
                  },
                  child: Text('Woman'),
                ),
          ],
        ),
        Divider(),
        SizedBox(
          width: 360,
          child:
          Row(
            children: <Widget>[
              Icon(Icons.cake,color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.only(left:14.0),
                child: Container(
                  width: 260,
                  child: RaisedButton(
                    onPressed: () {
                      _selectDate(context);
                    },
                    child: Text(selectDate),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            children: <Widget>[
              Checkbox(
                value: _agreedToTOS,
                onChanged: _setAgreedToTOS,
              ),
              GestureDetector(
                onTap: () => _setAgreedToTOS(!_agreedToTOS),
                child: const Text(
                  'I agree to the Terms of Services, Privacy Policy',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _setAgreedToTOS(bool newValue) {
    setState(() {
      _agreedToTOS = newValue;
    });
  }
}
