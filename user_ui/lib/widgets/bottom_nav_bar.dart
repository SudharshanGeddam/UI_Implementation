import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(22.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.blue,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.home_filled),
            color: Colors.white,
            iconSize: 30,),
            const SizedBox(width: 8.0),
            IconButton(onPressed: () {}, icon: Icon(Icons.car_repair),
            color: Colors.white,iconSize: 30,),
            const SizedBox(width: 8.0),
            IconButton(onPressed: () {}, icon: Icon(Icons.map_outlined),
            color: Colors.white,iconSize: 30,),
            const SizedBox(width: 8.0),
            IconButton(onPressed: () {}, icon: Icon(Icons.list_alt_outlined),
            color: Colors.white,iconSize: 30,),
            const SizedBox(width: 8.0),
            IconButton(onPressed: () {}, icon: Icon(Icons.person),
            color: Colors.white,iconSize: 30,),
          ],
        ),
      ),
    );
  }
}
