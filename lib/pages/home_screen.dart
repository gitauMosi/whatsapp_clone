import 'package:flutter/material.dart';
import 'package:whatsapp/constants/colors.dart';
import 'package:whatsapp/pages/settings_page.dart';
import 'package:whatsapp/widgets/chat_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          title: const Text(
            "Whatsapp",
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 0.5,
                fontSize: 25,
                fontWeight: FontWeight.w500),
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.camera_alt_outlined),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
            ),
            buildPopUpMenu(context)
          ],
          shadowColor: Colors.grey,
          centerTitle: false,
        ),
        body: Column(
          children: [
            const customChipWidget(),
            ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  
                  return chatListWidget(context, "Jane b", "morning?", "assets/images/user1.jpeg");
                }),
          ],
        ));
  }

  Widget buildPopUpMenu(BuildContext context) {
    return PopupMenuButton(
        icon: const Icon(Icons.more_vert),
        offset: const Offset(0, 50),
        onSelected: (dynamic value) {
          if (value == 5) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage()));
          }
        },
        color: backgroundColor,
        itemBuilder: (context) {
          List<PopupMenuEntry<Object>> list = [];
          list.add(const PopupMenuItem(
              value: 1,
              child: Text(
                "New group",
                style: TextStyle(fontSize: 16, color: textColor),
              )));
          list.add(const PopupMenuItem(
              value: 2,
              child: Text(
                "New broadcast",
                style: TextStyle(fontSize: 16, color: textColor),
              )));
          list.add(const PopupMenuItem(
              value: 3,
              child: Text(
                "Linked devices",
                style: TextStyle(fontSize: 16, color: textColor),
              )));
          list.add(const PopupMenuItem(
              value: 4,
              child: Text(
                "Starred messages",
                style: TextStyle(fontSize: 16, color: textColor),
              )));
          list.add(const PopupMenuItem(
              value: 5,
              child: Text(
                "Settings",
                style: TextStyle(fontSize: 16, color: textColor),
              )));
          return list;
        });
  }
}

class customChipWidget extends StatelessWidget {
  const customChipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        height: 40,
        color: const Color.fromARGB(0, 28, 31, 28),
        child: Row(
          children: [
            const SizedBox(
              width: 3,
            ),
            Chip(
                side: BorderSide.none,
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(12)),
                backgroundColor: const Color.fromARGB(82, 78, 83, 78),
                label: const Text("All", style: TextStyle(fontSize: 12))),
            const SizedBox(
              width: 3,
            ),
            Chip(
                side: BorderSide.none,
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(12)),
                backgroundColor: const Color.fromARGB(82, 78, 83, 78),
                label: const Text("Unread", style: TextStyle(fontSize: 12))),
            const SizedBox(
              width: 3,
            ),
            Chip(
                side: BorderSide.none,
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(12)),
                backgroundColor: const Color.fromARGB(82, 78, 83, 78),
                label: const Text(
                  "Favorites",
                  style: TextStyle(fontSize: 12),
                )),
            const SizedBox(
              width: 3,
            ),
            Chip(
                side: BorderSide.none,
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(12)),
                backgroundColor: const Color.fromARGB(82, 78, 83, 78),
                label: const Text("Groups", style: TextStyle(fontSize: 12))),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
