import 'package:flutter/material.dart';
import '../datacards/blogs.dart';
import '../datacards/bluebox.dart';
import '../datacards/categories.dart';
import '../datacards/offers.dart';
import '../datacards/quotes.dart';
import '../datacards/task.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              elevation: 0.5,
              toolbarHeight: 70,
              actions: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    0,
                    0,
                    20,
                    0,
                  ),
                  child: IconButton(
                    iconSize: 40,
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/appicon.png',
                    ),
                    color: Colors.black,
                  ),
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
                    const SizedBox(
                        height: 30,
                        width: 30,
                        child: Icon(
                          Icons.person_pin_rounded,
                          color: Colors.blue,
                        )
                        // ImageIcon(
                        //   AssetImage('assets/new1.png'),
                        // ),
                        ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Welcome back,",
                          style: TextStyle(
                              color: Color.fromARGB(255, 87, 87, 87),
                              fontSize: 15),
                        ),
                        Text(
                          "User",
                          style: TextStyle(
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
