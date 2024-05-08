import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 500,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(140),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/monkey.jpg"),
                      fit: BoxFit.cover)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.play_circle_filled_outlined,
                    size: 90,
                    color: Color.fromARGB(255, 172, 82, 211),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "Podcast",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  "Listen Your Favourite Podcast Anywhere, Anytime",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/seacond");
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 123, 37, 209))),
              child: const Padding(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 100, right: 100),
                child: Text(
                  "Log In",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Sign Up",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 123, 37, 209)),
            ),
          ],
        ),
      ),
    );
  }
}
