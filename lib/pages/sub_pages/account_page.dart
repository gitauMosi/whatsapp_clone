import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
      ),
      body: const Padding(
        padding:  EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.security, color: Colors.grey,),
              title:  Text("Security notifacation", style: TextStyle(fontSize: 15),),
            ),
             ListTile(
              leading: Icon(Icons.lock_person, color: Colors.grey,),
              title:  Text("Passkeys",  style: TextStyle(fontSize: 15)),
            ),
             ListTile(
              leading: Icon(Icons.email_outlined,color: Colors.grey,),
              title:  Text("Email address", style: TextStyle(fontSize: 15),),
            ),
             ListTile(
              leading: Icon(Icons.password, color: Colors.grey,),
              title:  Text("Two step verificatio",  style: TextStyle(fontSize: 15)),
            ),
             ListTile(
              leading: Icon(Icons.system_update_outlined, color: Colors.grey,),
              title:  Text("Change number", style: TextStyle(fontSize: 15),),
            ),
             ListTile(
              leading: Icon(Icons.sticky_note_2_outlined, color: Colors.grey,),
              title:  Text("Request account info",  style: TextStyle(fontSize: 15)),
            ),
             ListTile(
              leading: Icon(Icons.security, color: Colors.grey,),
              title:  Text("Add account", style: TextStyle(fontSize: 15),),
            ),
             ListTile(
              leading: Icon(Icons.delete_outline_rounded, color: Colors.grey,),
              title:  Text("Delete account",  style: TextStyle(fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }
}