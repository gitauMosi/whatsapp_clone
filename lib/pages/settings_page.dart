import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/pages/profile.dart';
import 'package:whatsapp/pages/sub_pages/account_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: false,
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
              },
              child: customUserWidget()),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AccountPage()));
              },
              child: const ListTile(
                leading: Icon(Icons.key_outlined, color: Colors.white,),
                title: Text("Account", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                subtitle: Text("Security notifacation, change number", style: TextStyle(color: Colors.grey, fontSize: 12),),
              ),
            ),
             const ListTile(
              leading: Icon(Icons.lock_outline, color: Colors.white,),
              title: Text("Privacy",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              subtitle: Text("Block contacts, disappearing messages",  style: TextStyle(color: Colors.grey, fontSize: 12)),
            ),
              const ListTile(
              leading: Icon(Icons.emoji_emotions, color: Colors.white,),
              title: Text("Avatar",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              subtitle: Text("Create, edit, profile photo",  style: TextStyle(color: Colors.grey, fontSize: 12)),
            ),
            const ListTile(
              leading: Icon(Icons.favorite_border, color: Colors.white,),
              title: Text("Favorites",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              subtitle: Text("Add, recorder, remove",  style: TextStyle(color: Colors.grey, fontSize: 12)),
            ),
            const ListTile(
              leading: Icon(Icons.chat_outlined, color: Colors.white,),
              title: Text("Chats",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              subtitle: Text("Theme, wallPapers, chat history",  style: TextStyle(color: Colors.grey, fontSize: 12)),
            ),
            const ListTile(
              leading: Icon(Icons.notifications_none, color: Colors.white,),
              title: Text("Notifications",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              subtitle: Text("Message, group & call tones",  style: TextStyle(color: Colors.grey, fontSize: 12)),
            ),
            const ListTile(
              leading: Icon(Icons.data_saver_off_outlined, color: Colors.white,),
              title: Text("Storage and data",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              subtitle: Text("Network usage, auto-dowload",  style: TextStyle(color: Colors.grey, fontSize: 12)),
            ),
            const ListTile(
              leading: Icon(Icons.language, color: Colors.white,),
              title: Text("App language",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              subtitle: Text("English (device's language)",  style: TextStyle(color: Colors.grey, fontSize: 12)),
            ),
            const ListTile(
              leading: Icon(Icons.help_outline, color: Colors.white,),
              title: Text("Help",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              subtitle: Text("Help center, contact us, privacy policy",  style: TextStyle(color: Colors.grey, fontSize: 12)),
            ),
            const ListTile(
              leading: Icon(Icons.people_alt_outlined, color: Colors.white,),
              title: Text("Invite a friend",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
             
            ),
            const ListTile(
              leading: Icon(Icons.security_update_good_rounded, color: Colors.white,),
              title: Text("App updates",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
             
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 10),
              width: double.infinity,
              color: Colors.transparent,
              child: const Text("Also from meta", textAlign: TextAlign.left, style: TextStyle(color: Colors.grey),),
            ),
            const ListTile(
              leading: Icon(Icons.photo_camera, color: Colors.white,),
              title: Text("Open Instagram",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
             
            ),
            const ListTile(
              leading: Icon(Icons.facebook_outlined, color: Colors.white,),
              title: Text("Open Facebook",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
             
            ),

             ],
        ),
      ),
    );
  }

  Widget customUserWidget() {
    return Container(
        height: 80,
        color: Colors.transparent,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/user1.jpeg"),
                        fit: BoxFit.cover)),
              ),
            ),
            const Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "@username",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Expanded(child: Text("Hey there! I am using whatsapp", style: TextStyle(fontSize: 12),))
              ],
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.qr_code,
                    color: Colors.green,
                    size: 25,
                  ),
                  Icon(
                    Icons.arrow_circle_down_rounded,
                    color: Colors.green,
                    size: 25,
                  ),
                ],
              ),
            )
          ],
        ));
  }
  
}
