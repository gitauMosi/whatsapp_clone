import 'package:flutter/material.dart';
import 'package:whatsapp/pages/sub_pages/chat_page.dart';

import 'package:whatsapp/widgets/custom_avatar.dart';

Widget chatListWidget(context, String name, String message, String url){
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatViewPage()));
    },
    child: ListTile(
        leading: customCircleAvatar(url),
        title: Text(name),
        subtitle:  Text(message),
        trailing: Column(
          children: [
            const Text("12:00Am", style: TextStyle(color: Colors.green),),
            const SizedBox(height: 3,),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green
              ),
              child: const Text("4", style: TextStyle(fontSize: 10, color: Colors.black),),
            )
          ],
        ),
        
    ),
  );
}