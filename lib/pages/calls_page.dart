import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});


  @override
  Widget build(BuildContext context) {
    List<String> contacts = [
      "Amos",
      "james",
      "janes",
      "Doe"
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Calls",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.camera_alt_outlined),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: const Color.fromARGB(255, 9, 137, 13),
          child: const Icon(Icons.add_ic_call),
          ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.transparent,
                        child: const Text(
                          "Favorites",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(4),
                          //padding: const EdgeInsets.all(15),
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(236, 4, 142, 8),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.favorite,
                              size: 20,
                              color: Color.fromARGB(213, 9, 8, 8),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Add to Favourite",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.transparent,
                        child: const Text("Recent"),
                      ),
                    ),
                  
                  ],
                ),
              ),
               
              
              //list builder
              ListView.builder(
                shrinkWrap: true,
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                return callListTile(contacts[index]);
              })
            ],
          ),
        ));
  }

  Widget callListTile(String name) {
    return ListTile(
      leading: Container(
        margin: const EdgeInsets.all(4),
        //padding: const EdgeInsets.all(15),
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          //color: Color.fromARGB(236, 4, 142, 8),
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage("assets/images/user2.png")),
        ),
       
      ),
      title:  Text(name),
      subtitle: const Row(
        children: [
          Icon(Icons.call_made, color: Colors.green, size: 12,),
           Text(" July 17, 1:59", style: TextStyle(fontSize: 10),),
        ],
      ),
      trailing: const SizedBox(
        width: 80,
        child:  Row(
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Spacer(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.call_outlined),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.videocam_outlined),
            )
          ],
        ),
      ),
    );
  }
}
