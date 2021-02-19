
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class SigninPhoneNumberVerificationPage extends StatefulWidget {
  final String verificationType;
  final String phoneNumber;

  const SigninPhoneNumberVerificationPage({Key key, this.verificationType, this.phoneNumber = ''}) : super(key: key);

  @override
  _SigninPhoneNumberVerificationPageState createState() => _SigninPhoneNumberVerificationPageState();
}

class _SigninPhoneNumberVerificationPageState extends State<SigninPhoneNumberVerificationPage> {
  // initialize global function

  bool _buttonDisabled = true;
  String _verificationCode = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: EdgeInsets.fromLTRB(30, 120, 30, 30),
          children: <Widget>[
            Center(
                child: (widget.verificationType == 'wa')
                    ? Image.asset('assets/images/whatsapp.png', height: 50)
                    : Icon(Icons.phone_android, color: Colors.green, size: 50)),
            SizedBox(height: 20),
            Center(
                child: Text('enter_verification_code',
            )),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
                child: Text('enter_verification_code_message2'),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: PinCodeTextField(
                autoFocus: true,
                appContext: context,
                keyboardType: TextInputType.number,
                length: 4,
                showCursor: false,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.underline,
                  fieldHeight: 50,
                  fieldWidth: 40,
                  inactiveColor: Colors.green,
                  activeColor: Colors.grey,
                  selectedColor: Colors.blue
                ),
                animationDuration: Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                onChanged: (value) {
                  setState(() {
                    if(value.length==4){
                      _buttonDisabled = false;
                    } else {
                      _buttonDisabled = true;
                    }
                    _verificationCode = value;
                  });
                },
                beforeTextPaste: (text) {
                  return false;
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: SizedBox(
                  width: double.maxFinite,
                  child: FlatButton(
                    splashColor: _buttonDisabled?Colors.transparent:Colors.grey,
                    highlightColor: _buttonDisabled?Colors.transparent:Colors.grey,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(3.0),
                    ),
                    onPressed: () {
                      if(!_buttonDisabled){
                        print(_verificationCode);
                     //   Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => BottomNavigationBarPage()), (Route<dynamic> route) => false);
                        FocusScope.of(context).unfocus();
                      }
                    },
                    padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                    color: _buttonDisabled?Colors.grey[300]:Colors.grey,
                    child: Text('verify',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: _buttonDisabled?Colors.grey[600]:Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  )
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Wrap(
                children: [
                  Text('not_receive_code'),
                  GestureDetector(
                    onTap: (){
                   //   _globalFunction.resendVerification(context, AppLocalizations.of(context).translate('resend_verification_message_phone'));
                    },
                    child: Text('resend'),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}


