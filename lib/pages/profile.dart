import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                 Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("assets/images/user1.jpeg"), fit: BoxFit.cover)
                ),
              ),
               Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 4, 141, 9),
                    shape: BoxShape.circle
                  ),
                  child: const Icon(Icons.camera_alt_outlined, color: Colors.black,)))
              ]
            ),

           const ListTile(
              leading: Icon(Icons.person_2_outlined, color: Colors.grey,),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name", style: TextStyle(color: Colors.grey),),
                  Text("@username"),
                  Text("This is not your username or pin. This name will be visible to your WhatsApp contacts.", style: TextStyle(fontSize: 9, color: Colors.grey),)
                ],
                
              ),
              trailing: Icon(Icons.edit_outlined, color: Colors.green,),
            ),
             const ListTile(
              leading: Icon(Icons.error_outline, color: Colors.grey,),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About", style: TextStyle(color: Colors.grey),),
                  
                  Text("Hey there! I am using WhatsApp.", style: TextStyle(fontSize: 13 ),)
                ],
                
              ),
              trailing: Icon(Icons.edit_outlined, color: Colors.green,),
            ),
             const ListTile(
              leading: Icon(Icons.call_outlined, color: Colors.grey,),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Phone", style: TextStyle(color: Colors.grey),),
                  
                  Text("+254011508899", style: TextStyle(fontSize: 13 ),)
                ],
                
              ),
              
            )
          ],
        ),
      ),
    );
  }
}