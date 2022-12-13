import 'package:flutter/material.dart';
import 'package:project3/constant/route.dart';
import '../datacards/blogs.dart';
import '../datacards/bluebox.dart';
import '../datacards/categories.dart';
import '../datacards/offers.dart';
import '../datacards/quotes.dart';
import '../datacards/task.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

enum MenuAction { logout }

class Homepage extends StatefulWidget {
  const Homepage({super.key, this.name});
  final name;
  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: FloatingNavbar(
          borderRadius: 25,
          iconSize: 28,
          onTap: (int val) => setState(() => _index = val),
          currentIndex: _index,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.indigo,
          selectedBackgroundColor: Colors.white,
          unselectedItemColor: Colors.grey[400],
          items: [
            FloatingNavbarItem(icon: Icons.home),
            FloatingNavbarItem(icon: Icons.credit_card_outlined),
            FloatingNavbarItem(icon: Icons.pie_chart_outline),
            FloatingNavbarItem(icon: Icons.money),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              elevation: 0.5,
              toolbarHeight: 70,
              actions: [
                PopupMenuButton<MenuAction>(
                  icon: Padding(
                    padding: const EdgeInsets.fromLTRB(
                      0,
                      0,
                      0,
                      0,
                    ),
                    child: Image.asset(
                      'assets/appicon.png',
                      color: Colors.black,
                      cacheHeight: 500,
                      cacheWidth: 500,
                    ),
                  ),
                  onSelected: (value) async {
                    switch (value) {
                      case MenuAction.logout:
                        final shouldLogout = await showLogOutDialog(context);
                        // devtools.log(shouldLogout.toString());
                        if (shouldLogout) {
                          if (!mounted) return;
                          await Navigator.pushNamedAndRemoveUntil(
                            context,
                            loginRoute,
                            (_) => false,
                          );
                        }
                        break;
                    }
                  },
                  itemBuilder: (context) {
                    return const [
                      PopupMenuItem(
                          value: MenuAction.logout, child: Text('Logout')),
                    ];
                  },
                ),
              ],
              title: Padding(
                padding: const EdgeInsets.fromLTRB(
                  10,
                  0,
                  0,
                  0,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/pfp.png',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Welcome back,",
                          style: TextStyle(
                              color: Color.fromARGB(255, 87, 87, 87),
                              fontSize: 15),
                        ),
                        Text(
                          widget.name ?? "User",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          5,
                          0,
                          5,
                          5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                8.0,
                                8.0,
                                8.0,
                                10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    " Your doing",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 87, 87, 87),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    " great keep it up.",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 87, 87, 87),
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            const Bluebox(),
                            const Categories(),
                            const Task(),
                            const Offers(),
                            const Blogs(),
                            const Quotes(),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<bool> showLogOutDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          title: const Text("Logout"),
          content: const Text("Are You sure You Want To Logout"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('Log Out'),
            ),
          ],
        );
      }).then((value) => value ?? false);
}
