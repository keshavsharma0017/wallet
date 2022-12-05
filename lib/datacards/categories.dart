
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        8.0,
        22,
        8.0,
        8.0,
      ),
      child: SizedBox(
        height: 130,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Categories",
              style: TextStyle(
                  color:
                      Color.fromARGB(255, 87, 87, 87),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                8.0,
                25,
                8.0,
                8.0,
              ),
              child: SizedBox(
                height: 75,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      children: [
                        SizedBox(
                          height: 55,
                          width: 80,
                          child: ElevatedButton(
                            style: ElevatedButton
                                .styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255),
                              shape:
                                  const CircleBorder(),
                              elevation: 1,
                            ),
                            onPressed: () {},
                            child: const Icon(
                                Icons.fastfood_sharp,
                                color: Colors.orange),
                          ),
                        ),
                        const Text(
                          'Food',
                          style:
                              TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 55,
                          width: 80,
                          child: ElevatedButton(
                            style: ElevatedButton
                                .styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255),
                              shape:
                                  const CircleBorder(),
                              elevation: 1,
                            ),
                            onPressed: () {},
                            child: const Icon(
                                Icons.pets_outlined,
                                color:
                                    Colors.pinkAccent),
                          ),
                        ),
                        const Text(
                          'Pet',
                          style:
                              TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 55,
                          width: 80,
                          child: ElevatedButton(
                            style: ElevatedButton
                                .styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255),
                              shape:
                                  const CircleBorder(),
                              elevation: 1,
                            ),
                            onPressed: () {},
                            child: const Icon(
                                Icons
                                    .shopping_bag_sharp,
                                color: Colors
                                    .purpleAccent),
                          ),
                        ),
                        const Text(
                          'Shopping',
                          style:
                              TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 55,
                          width: 80,
                          child: ElevatedButton(
                            style: ElevatedButton
                                .styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255),
                              shape:
                                  const CircleBorder(),
                              elevation: 1,
                            ),
                            onPressed: () {},
                            child: const Icon(Icons.tv,
                                color:
                                    Colors.lightBlue),
                          ),
                        ),
                        const Text(
                          'Entertainment',
                          style:
                              TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 55,
                          width: 80,
                          child: ElevatedButton(
                            style: ElevatedButton
                                .styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255),
                              shape:
                                  const CircleBorder(),
                              elevation: 1,
                            ),
                            onPressed: () {},
                            child: const Icon(
                                Icons.bathtub_outlined,
                                color: Colors.green),
                          ),
                        ),
                        const Text(
                          'Personal Care',
                          style:
                              TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 55,
                          width: 80,
                          child: ElevatedButton(
                            style: ElevatedButton
                                .styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(
                                      255,
                                      255,
                                      255,
                                      255),
                              shape:
                                  const CircleBorder(),
                              elevation: 0.1,
                            ),
                            onPressed: () {},
                            child: const Icon(
                                Icons.card_travel_sharp,
                                color: Colors.red),
                          ),
                        ),
                        const Text(
                          'Travel',
                          style:
                              TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}