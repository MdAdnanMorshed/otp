import 'package:flutter/material.dart';
import 'package:otp/signin_phone_number_choose_verification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OTP ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 final _phoneController  =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' OTP UI'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
             keyboardType: TextInputType.number,
              controller: _phoneController,
              decoration: InputDecoration(

                  hintText: 'Enter your Phone number '
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SigninPhoneNumberChooseVerificationPage(phoneNumber: _phoneController.text)));
              },
              child: Text('OTP'),
            )
          ],
        ),
      ),
    );
  }
}
