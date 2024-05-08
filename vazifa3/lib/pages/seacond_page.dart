import 'package:flutter/material.dart';

class SeacondPage extends StatelessWidget {
  const SeacondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/first");
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Popular Show",
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
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset("assets/music.png"),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 123, 37, 209)),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Play All Show",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/third");
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 15, right: 15),
                      child: Text(
                        "Subscribe",
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "12 Popular show",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              for (var i = 0; i < 5; i++) musics()
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        width: double.infinity,
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: const Color.fromARGB(60, 158, 145, 145), blurRadius: 3)
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: Colors.white),
        child: const Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      size: 38,
                      color: Color.fromARGB(255, 123, 37, 209),
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Color.fromARGB(255, 123, 37, 209),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.category_outlined,
                      size: 38,
                      color: Colors.grey,
                    ),
                    Text(
                      "Categories",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.playlist_play,
                      size: 38,
                      color: Colors.grey,
                    ),
                    Text(
                      "Playlist",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 38,
                      color: Colors.grey,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget musics() {
  return Column(
    children: [
      Row(
        children: [
          Row(
            children: [
              Container(
                height: 90,
                width: 120,
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  "assets/music.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enjoy",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "Socialled Buzzy",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(width: 65),
              const Icon(
                Icons.play_circle_filled,
                size: 60,
                color: Colors.grey,
              )
            ],
          ),
        ],
      ),
      const SizedBox(height: 20),
    ],
  );
}
