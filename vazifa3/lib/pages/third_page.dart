import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/seacond");
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Subscribe",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        actions: const [
          Icon(
            Icons.more_vert_sharp,
            size: 30,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "Subscribe Your Favorite Podcast Authores, Or You Can Skip it For Now",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              const SizedBox(height: 30),
              for (var i = 0; i < 5; i++) profiles()
            ],
          ),
        ),
      ),
    );
  }
}

Widget profiles() {
  return Column(
    children: [
      Row(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 130,
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  "assets/music.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "The Smith Comedy",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  const Text(
                    "Show",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      const Text(
                        "685 Podcast",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                      const SizedBox(width: 30),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 123, 37, 209)),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Subscribe",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
      const SizedBox(height: 20),
      Row(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 130,
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  "assets/music.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "The Smith Comedy",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  const Text(
                    "Show",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      const Text(
                        "685 Podcast",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                      const SizedBox(width: 30),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 225, 222, 228)),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Subscribe",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
      const SizedBox(height: 20),
    ],
  );
}
