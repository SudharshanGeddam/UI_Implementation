import 'package:flutter/material.dart';
import 'package:user_ui/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Map<String, String>> items = [
    {
      "image": "",
      "title": "Engine Service",
      "subtitle": "Complete engine checkup",
      "price": "Starting from 499",
    },
    {
      "image": "",
      "title": "Tyre Service",
      "subtitle": "Tyre repair and replacement",
      "price": "Starting from 199",
    },
    {
      "image": "",
      "title": "Battery Service",
      "subtitle": "Battery checks and replacement",
      "price": "Starting from 799",
    },
    {
      "image": "",
      "title": "Car/Bike Wash",
      "subtitle": "Premium cleaning Service",
      "price": "Starting from 399",
    },
    {
      "image": "",
      "title": "Denting/Painting",
      "subtitle": "Professional body work",
      "price": "Starting from 199",
    },
    {
      "image": "",
      "title": "Breakdown Towing",
      "subtitle": "24/7 emergency towing",
      "price": "Starting from 499",
    },
    {
      "image": "",
      "title": "Accessories",
      "subtitle": "Vehicle accessories and parts",
      "price": "Starting from 199",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer_App', style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      children: List.generate(8, (index){
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Text("Item ${index + 1}",
          style: TextStyle(color: Colors.white, fontSize: 18),),
        );
      }),),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}