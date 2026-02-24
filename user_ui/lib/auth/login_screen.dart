import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';

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
                    child: ElevatedButton(onPressed: (){},
                    style: ButtonStyle(
                      elevation: WidgetStatePropertyAll(1),
                    ), 
                    child: Text("Send OTP", style: TextStyle(color: Colors.black),)),
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