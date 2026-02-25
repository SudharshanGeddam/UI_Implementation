import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
import 'package:user_ui/auth/otp_screen.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(),
              child: Image.asset('assets/images/login_bg.png'),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text("Let's Sign you in", style: TextStyle(
                   fontSize: 22, fontWeight: FontWeight.bold,
                  ),),
                  const SizedBox(height: 20,),
                  Text("Welcome back, you've been missed", style: TextStyle(
                    color: Colors.blueGrey, fontSize: 18,
                  ),),
                  const SizedBox(height: 50,),
                  IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ), 
                    child: Text("Send OTP", style: TextStyle(color: Colors.white),)),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}