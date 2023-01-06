import 'package:flutter/material.dart';
import 'package:get/get.dart';

class chat extends StatelessWidget {
  const chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Select contact"),
                Text(
                  "200 contacts",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 100,
            ),
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.more_vert),
          ],
        ),
        backgroundColor: Colors.green[900],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Icon(Icons.person),
              SizedBox(
                width: 20,
              ),
              Text(
                "New group",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Icon(Icons.person),
              SizedBox(
                width: 20,
              ),
              Text(
                "New contact",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 180,
              ),
              Icon(Icons.qr_code),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Icon(Icons.people_alt),
              SizedBox(
                width: 20,
              ),
              Text(
                "New community",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Discover"),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Icon(Icons.business),
              SizedBox(
                width: 20,
              ),
              Text(
                "Businesses",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Contacts on Whatsup"),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Get.back(result: "Belajar {async await}");
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green[900]),
              ),
              child: const Text(
                "Back",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
