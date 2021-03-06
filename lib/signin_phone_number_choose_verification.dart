/*
This is sign in with phone number choose verification page
 */

import 'package:flutter/material.dart';
import 'package:otp/signin_phone_number_verification.dart';

class SigninPhoneNumberChooseVerificationPage extends StatefulWidget {
  final String phoneNumber;

  const SigninPhoneNumberChooseVerificationPage({Key key, this.phoneNumber = '01831679008'}) : super(key: key);

  @override
  _SigninPhoneNumberChooseVerificationPageState createState() => _SigninPhoneNumberChooseVerificationPageState();
}

class _SigninPhoneNumberChooseVerificationPageState extends State<SigninPhoneNumberChooseVerificationPage> {
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
            Center(child: Text('choose_verification_method')),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: Text('choose_verification_method_message'),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SigninPhoneNumberVerificationPage(verificationType: 'sms', phoneNumber: widget.phoneNumber)));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 1,
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  width: MediaQuery.of(context).size.width - 60,
                  child: Row(
                    children: [
                      Icon(Icons.phone_android, color: Colors.green, size: 50),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('sms_to'),
                            SizedBox(
                              height: 3,
                            ),
                            Text(widget.phoneNumber)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ///what's up  todo

            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SigninPhoneNumberVerificationPage(verificationType: 'wa', phoneNumber: widget.phoneNumber)));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 1,
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  width: MediaQuery.of(context).size.width - 60,
                  child: Row(
                    children: [
                      Icon(Icons.phone_android, color: Colors.green, size: 50),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('whatsapp_to'),
                            SizedBox(
                              height: 3,
                            ),
                            Text(widget.phoneNumber)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.subdirectory_arrow_left),
                    Text('Back')
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
