
import 'package:flutter/material.dart';

class Bluebox extends StatelessWidget {
  const Bluebox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color:
                const Color.fromARGB(255, 48, 63, 159),
            borderRadius: BorderRadius.circular(25)),
        height: 430,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(
                18.0,
                18.0,
                18.0,
                0,
              ),
              child: Text(
                'Total Spends',
                style: TextStyle(
                    color: Color.fromARGB(
                        255, 223, 225, 243),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(
                18.0,
                7.0,
                18.0,
                18.0,
              ),
              child: Text(
                '₹12,000',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                12.0,
                7.0,
                10.0,
                18.0,
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        height: 70,
                        width: 120,
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Projected Saving',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(
                                      255, 82, 82, 81),
                                  fontWeight:
                                      FontWeight.w500),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '₹2,000',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight:
                                      FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        height: 70,
                        width: 120,
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Highest Spent',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(
                                      255, 82, 82, 81),
                                  fontWeight:
                                      FontWeight.w500),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '₹2,000',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight:
                                      FontWeight.w600),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(8)),
                    height: 145,
                    width: 120,
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(
                        8.0,
                        10.0,
                        0,
                        5.0,
                      ),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Card balance',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(
                                    255, 82, 82, 81),
                                fontWeight:
                                    FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const Text(
                                '₹1,500',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight:
                                        FontWeight
                                            .w700),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Container(
                                height: 15,
                                width: 40,
                                decoration:
                                    BoxDecoration(
                                  borderRadius:
                                      BorderRadius
                                          .circular(20),
                                  color: const Color
                                          .fromARGB(
                                      58, 225, 59, 48),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Low Bal",
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Color
                                            .fromARGB(
                                                255,
                                                225,
                                                59,
                                                48),
                                        fontWeight:
                                            FontWeight
                                                .w700),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets
                                .fromLTRB(
                              45.0,
                              10.0,
                              0,
                              0,
                            ),
                            child: SizedBox(
                              height: 60,
                              width: 60,
                              child: ElevatedButton(
                                style: ElevatedButton
                                    .styleFrom(
                                  backgroundColor:
                                      const Color
                                              .fromARGB(
                                          255,
                                          48,
                                          63,
                                          159),
                                  shape:
                                      const CircleBorder(),
                                  elevation: 0,
                                ),
                                onPressed: () {},
                                child: const Center(
                                    child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color:
                                          Colors.white,
                                      fontWeight:
                                          FontWeight
                                              .w500),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}