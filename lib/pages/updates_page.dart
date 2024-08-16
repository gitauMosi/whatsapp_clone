import 'package:flutter/material.dart';
import 'package:whatsapp/constants/colors.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> channels = [
      "FC Barcelona",
      "Billie Eilish Home",
      "Katrina Kaif",
      "Olympics",
      "Arsenal"
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text(
          "Updates",
          style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
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
        elevation: 0,
        bottomOpacity: 1.0,
      ),
      floatingActionButton: Column(
        //crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){},
            mini: true,
            backgroundColor: Colors.white,
            child: const Icon(Icons.edit, color: Color.fromARGB(230, 0, 0, 0),),
            ),
            const SizedBox(height: 15,),
             FloatingActionButton(
            onPressed: (){},
            backgroundColor: const Color.fromARGB(255, 3, 141, 8),
            child: const Icon(Icons.camera_alt_rounded),
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Status",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                color: Colors.transparent,
                width: double.infinity,
                height: 70,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Stack(children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/user2.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                          right: 0.0,
                          bottom: 0.0,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 35, 254, 46),
                                shape: BoxShape.circle),
                            child: const Center(
                                child: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 15,
                            )),
                          ),
                        ),
                      ]),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "My status",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Tab to add status update",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Recent Updates",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              ListView.builder(
                  itemCount: 1,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return statusList(false);
                  }),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Viewed Updates",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return statusList(true);
                  }),
              const Divider(),
              Container(
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Channels",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            "Stay updated on topics that mater to you. find channels to follow below.",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          customChannelCard(channels[0]),
                          customChannelCard(channels[1]),
                          customChannelCard(channels[2]),
                          customChannelCard(channels[3]),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(176, 13, 112, 16)),
                          onPressed: () {},
                          child: const Text("Explore more")),
                    ),
                    const SizedBox(height: 100,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customChannelCard(String name) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Stack(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(140, 158, 158, 158),
                  child: Icon(
                    Icons.blur_circular,
                    color: Color.fromARGB(255, 172, 172, 172),
                  ),
                ),
                Positioned(
                  right: 0.0,
                  bottom: 0.0,
                  child: Icon(Icons.verified, color: Colors.green),
                ),
              ],
            ),
            //text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style:
                    const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              ),
            ),

            //
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(142, 8, 99, 11)),
                child: const Text("  Follow  ")),
          ],
        ),
      ),
    );
  }

  Widget statusList(bool isViewed) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            color:
                isViewed ? Colors.grey : const Color.fromARGB(230, 70, 240, 98),
            shape: BoxShape.circle),
        child: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/user1.jpeg",
                  ),
                  fit: BoxFit.cover),
              shape: BoxShape.circle),
        ),
      ),
      title: const Text(
        "Bra mr",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
        "6:57Am",
        style: TextStyle(color: Colors.grey, fontSize: 13),
      ),
    );
  }
}
