import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Communities",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.camera_alt_outlined),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
              width: double.infinity,
              color: Colors.transparent,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(children: [
                      Container(
                        margin: const EdgeInsets.all(4),
                        padding: const EdgeInsets.all(10),
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(237, 158, 158, 158),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(12)),
                        child: const Icon(Icons.people),
                      ),
                      Positioned(
                          bottom: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                            child: const Icon(Icons.add),
                          )),
                    ]),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "New Community",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.2),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 10,
              color: Colors.black,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.transparent,
              width: double.infinity,
              height: 70,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(4),
                    padding: const EdgeInsets.all(3),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(237, 158, 158, 158),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12)),
                    child: Image.asset(
                      "assets/images/status1.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Software engineering",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.2),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  //image
                  Container(
                      margin: const EdgeInsets.all(4),
                      //padding: const EdgeInsets.all(15),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(236, 4, 142, 8),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                          child: Icon(
                        Icons.notifications_active,
                        color: Color.fromARGB(167, 255, 255, 255),
                      ))),
                  const SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text("Announcement"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "7/11/2024",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Welcome to your Commmunity!",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  //image
                  Container(
                      margin: const EdgeInsets.all(4),
                      //padding: const EdgeInsets.all(15),
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(205, 207, 209, 207),
                        shape: BoxShape.circle,
                        //borderRadius: BorderRadius.circular(12)
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.message,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ))),
                  const SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text("General"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "7/11/2024",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "New community members will no longer..",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
           const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Row(
                children: [
                  Icon(Icons.arrow_drop_down_outlined),
                  SizedBox(width: 10,),
                  Text("View all")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
