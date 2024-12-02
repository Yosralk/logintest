import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int index = 0;
  Color c = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
        centerTitle: true,
        actions: [
          Iconbtn(txt: "Home", icon: Icons.home),
          Iconbtn(txt: "Settings", icon: Icons.settings),
          Iconbtn(txt: "Products", icon: Icons.list_sharp),
        ],
        backgroundColor: const Color(0xCD347aeb),
        flexibleSpace: const Padding(
          padding: EdgeInsets.only(top: 100),
          child: Center(
            child: Text(
              "space",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: const Text("bottom from bottom pro"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 30),
                  ListTFun(txt: "facebooke", icon: Icons.facebook_outlined),
                  ListTFun(txt: "telegram", icon: Icons.telegram),
                  ListTFun(txt: "snapchat", icon: Icons.snapchat),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Close"),
                  ),
                ],
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blueGrey.shade900,
        shape: const CircleBorder(),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://w7.pngwing.com/pngs/129/292/png-transparent-female-avatar-girl-face-woman-user-flat-classy-users-icon.png",
              ),
            ),
            ListTFun(txt: "Account", icon: Icons.person),
            ListTFun(txt: "Settings", icon: Icons.settings),
            ListTFun(txt: "Logout", icon: Icons.logout),
          ],
        ),
      ),
      persistentFooterButtons: [
        Iconbtn(txt: "Home", icon: Icons.home),
        Iconbtn(txt: "Logout", icon: Icons.logout),
      ],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Logout"),
        ],
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
            switch (index) {
              case 0:
                c = Colors.grey[100] ?? Colors.grey;
                break;
              case 1:
                c = Colors.greenAccent[200] ?? Colors.green;
                break;
              case 2:
                c = Colors.blueGrey[900] ?? Colors.blueGrey;
                break;
            }
          });
        },
      ),
    );
  }

  Widget Iconbtn({required String txt, required IconData icon}) {
    return IconButton(
      onPressed: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(txt)));
      },
      icon: Icon(icon),
    );
  }

  Widget ListTFun({required String txt, required IconData icon}) {
    return ListTile(
      title: Text(txt),
      leading: Icon(icon),
    );
  }
}
