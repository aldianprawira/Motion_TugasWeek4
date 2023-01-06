import 'package:flutter/material.dart';
import 'package:latihanmandiri_stateful_import_navigation/chat.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: WidgetMenu(),
    );
  }
}

class WidgetMenu extends StatefulWidget {
  const WidgetMenu({super.key});

  @override
  State<WidgetMenu> createState() => _WidgetMenuState();
}

class _WidgetMenuState extends State<WidgetMenu> {
  int _selectedIndex = 0;
  final List<Widget> _page = [
    const HomePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Settings",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.green[900],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {
        //     Get.to(HomePage());
        //   },
        //   icon: Icon(Icons.arrow_back),
        // ),
        title: const Text("Settings"),
        backgroundColor: Colors.green[900],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/Aldian_PP.jpeg",
                scale: 20,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Aldian Prawira",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text("Available"),
                ],
              ),
              const SizedBox(
                width: 110,
              ),
              Icon(
                Icons.qr_code,
                color: Colors.green[900],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.key),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Account",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text("Security notifications, change number"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.person),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Avatar",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text("Create, edit, profile photo"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.lock),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Privacy",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text("Block contacts, disappearing messages"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.chat),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Chats",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text("Theme, wallpapers, chat history"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.notifications),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text("Message, group & call tones"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.sd_storage),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Storage and data",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text("Network usage, auto-download"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.language),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "App language",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text("English (phone's language)"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.help),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Help",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text("Help center, contact us, privacy policy"),
                ],
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
              Icon(Icons.person_add),
              SizedBox(
                width: 20,
              ),
              Text(
                "Invite a friend",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "from",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.emoji_symbols_sharp),
              SizedBox(
                width: 5,
              ),
              Text(
                "Meta",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: const [
            Text("WhatsUp"),
            SizedBox(
              width: 170,
            ),
            Icon(Icons.camera_alt),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert),
          ],
        ),
        backgroundColor: Colors.green[900],
      ),
      body: Column(
        children: [
          Lottie.asset("assets/lottie/coding.json"),
          Text(
            result,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[900],
        onPressed: () async {
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => const chat()));
          // () => const chat();
          result = await Get.to(() => const chat());
          setState(() {});
        },
        child: const Icon(Icons.chat),
      ),
    );
  }
}
