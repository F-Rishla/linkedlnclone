import 'package:flutter/material.dart';
import 'package:linkdedln_demo/home_screen_two.dart';
import 'package:linkdedln_demo/job_screen.dart';
import 'package:linkdedln_demo/network_screen.dart';
import 'package:linkdedln_demo/notification_screen.dart';
import 'package:linkdedln_demo/post_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int _selectIndex = 0;
  List<Widget> screens = [
    const HomeScreenTwo(),
    const NetworkScreen(),
    const PostScreen(),
    const NotificationScreen(),
    const JobScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        //backgroundColor: const Color.fromARGB(255, 103, 101, 101),
        leading: IconButton(
          onPressed: () {
            _key.currentState!.openDrawer();
          },
          icon: const Icon(Icons.account_circle),
          color: Colors.grey,
        ),
        title: SizedBox(
          height: 35,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              contentPadding: const EdgeInsets.symmetric(vertical: 1),
              border: InputBorder.none,
              prefixIcon: const Icon(Icons.search),
              fillColor: const Color.fromARGB(255, 216, 225, 242),
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(25.7),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Badge(
              backgroundColor: Colors.red,
              label: Text("3"),
              child: Icon(Icons.textsms),
            ),
            color: Colors.grey,
          ),
        ],
      ),
      body: screens[_selectIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle),
                  color: Colors.grey,
                  iconSize: 70,
                ),
                const Text(
                  "Fathima Rishla P",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Text(
                  "View Profile",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )
              ],
            )),
            Column(
              children: [
                const Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Groups",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                    ),
                    ListTile(
                      title: Text(" Events",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 450,
                ),
                Column(
                  children: [
                    const Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: IconButton(
                        icon: const Icon(
                          Icons.settings,
                          size: 25.0,
                          color: Color.fromARGB(171, 67, 64, 64),
                        ),
                        onPressed: () {
                          //   _onDeleteItemPressed(index);
                        },
                      ),
                      title: const Text(
                        "Settings",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectIndex,
        // fixedColor: Colors.black,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Badge(
                backgroundColor: Colors.red,
                label: Text("5"),
                child: Icon(Icons.people_alt),
              ),
              label: "My Network"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "Post"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: "Jobs"),
        ],
        onTap: (index) {
          setState(() {
            _selectIndex = index;
          });
        },
      ),
    );
  }
}
