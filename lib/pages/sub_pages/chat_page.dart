import 'package:flutter/material.dart';
import 'package:whatsapp/constants/colors.dart';

class ChatViewPage extends StatefulWidget {
  const ChatViewPage({super.key});

  @override
  State<ChatViewPage> createState() => _ChatViewPageState();
}

class _ChatViewPageState extends State<ChatViewPage> {
  @override
  Widget build(BuildContext context) {
    bool isText = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        centerTitle: false,
        title: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/user1.jpeg",
                      ),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle),
            ),
            const SizedBox(
              width: 5,
            ),
            const Expanded(
                child: Text(
              "Brayoo",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ))
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(6.0),
            child: Icon(Icons.videocam_outlined),
          ),
          Padding(
            padding: EdgeInsets.all(6.0),
            child: Icon(Icons.call_outlined),
          ),
          Padding(
            padding: EdgeInsets.all(6.0),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      bottomSheet: Container(
        height: 100,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/background.jpeg"), fit: BoxFit.cover)
        ),
        child: Row(
          children: [
            const SizedBox(width: 2,),
            Container(
              height: 50,
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.only(right: 4),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 73, 70, 70),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.emoji_emotions_outlined, color: Colors.grey,),
                 const SizedBox(width: 5,),
                  Container(
                    //color: Colors.red,
                    margin: const EdgeInsets.all(0),
                    width: 170,
                    child:  TextFormField(
                      
                      onTap: (){
                       //if(value.isNotEmpty){
                          setState(() {
                            isText = true;
                          }
                          
                          );
                          
                       // }
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Message"
                      ),
                    ),
                  ),
                  const Icon(Icons.attach_file_outlined, color: Colors.grey,),
                  const Icon(Icons.camera_alt_outlined, color: Colors.grey,),
                  const SizedBox(width: 2,),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 4),
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green
              ),
              child:  Icon(isText ? Icons.send_outlined : Icons.mic_none_sharp),
            )
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpeg"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
