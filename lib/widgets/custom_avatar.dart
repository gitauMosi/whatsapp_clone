
import 'package:flutter/material.dart';

Widget customCircleAvatar(String url){
  return Container(
    width: 50,
    height: 50,
    padding: const EdgeInsets.all(3),
    decoration: const BoxDecoration(
       color:  Color.fromARGB(230, 70, 240, 98),
      shape: BoxShape.circle
    ),
    child: Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
       image: DecorationImage(image: AssetImage("assets/images/user1.jpeg", ), fit: BoxFit.cover),
      shape: BoxShape.circle
    ),
    ),
  );
}