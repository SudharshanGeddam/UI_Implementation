import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpScreen extends StatefulWidget{
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Text("Verify", style: TextStyle(
                   fontSize: 22, fontWeight: FontWeight.bold,
                  ),),
                  const SizedBox(height: 20,),
                  Text("Please enter 6-digit OTP sent to your Mobile number", style: TextStyle(
                    color: Colors.blueGrey, fontSize: 18,
                  ),),
                  const SizedBox(height: 50,),
                  Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(6, (index) => _buildOtpBox(index)),
                  ),),
                  const SizedBox(height: 30,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ), 
                    child: Text("Verify", style: TextStyle(color: Colors.white),)),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }

  Widget _buildOtpBox(int index) {
    return SizedBox(
      width: 45,
      child: TextField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: const InputDecoration(
          counterText: "",
          border: OutlineInputBorder(),
        ),
        onChanged: (value){},
      ),
    );
  }
}