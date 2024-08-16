import 'package:flutter/material.dart';
import 'package:whatsapp/constants/colors.dart';
import 'package:whatsapp/pages/calls_page.dart';
import 'package:whatsapp/pages/community_page.dart';
import 'package:whatsapp/pages/home_screen.dart';
import 'package:whatsapp/pages/updates_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _itemSelectedIndex = 0;
  final List<Widget> _pages = [
      const HomeScreen(),
      const UpdatePage(),
      const CommunityPage(),
      const CallsPage(),
  ];
  void _onItemSelected(int index){
    setState(() {
      _itemSelectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_itemSelectedIndex],
      bottomNavigationBar: Container(
        //color: backgroundColor,
        width: double.infinity,
        height: 100,
        decoration: const BoxDecoration(
          color: backgroundColor,
          border: Border(
            top: BorderSide(color: Colors.black12, width: 0.4)

          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavigatioBarItem(Icons.message, Icons.message_outlined, "Chats", 0),
            buildNavigatioBarItem(Icons.update, Icons.update, "Updates", 1),
            buildNavigatioBarItem(Icons.people, Icons.people_outlined, "Communities", 2),
            buildNavigatioBarItem(Icons.call, Icons.call_outlined, "Calls", 03)
          ],),
        
        
      ),
    );
  }

  Widget buildNavigatioBarItem(IconData filledIcon, IconData outlinedIcon, String label, int index ){
       return GestureDetector(
        onTap: () => _onItemSelected(index),
        child: Padding(
          padding: const EdgeInsets.only(top: 10,),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 13),
                decoration: BoxDecoration(
                  color: _itemSelectedIndex == index ? primaryColor: backgroundColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  _itemSelectedIndex == index ? filledIcon : outlinedIcon,
                  size: 28,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8,),
              Text(label,
              style: TextStyle(fontSize: 16,
              fontWeight: _itemSelectedIndex == index ? FontWeight.w900 : FontWeight.w500, color: Colors.white),
              )
            ],
          ),),
       );
  }
}