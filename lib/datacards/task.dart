
import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        8.0,
        8.0,
        8.0,
        0,
      ),
      child: SizedBox(
        height: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Task",
              style: TextStyle(
                  color:
                      Color.fromARGB(255, 87, 87, 87),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 136,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  //1
                  //
                  //
                  //
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      8.0,
                      8.0,
                      4.0,
                      8.0,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.1,
                                      color:
                                          Colors.grey),
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              15)),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets
                                            .fromLTRB(
                                      0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child:
                                        Row(children: [
                                      Flexible(
                                        child:
                                            Image.asset(
                                          'assets/ellipse.png',
                                          cacheHeight:
                                              5,
                                          cacheWidth: 5,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        '01',
                                        style: TextStyle(
                                            fontSize:
                                                35,
                                            fontWeight:
                                                FontWeight
                                                    .w500,
                                            color: Color
                                                .fromARGB(
                                                    255,
                                                    246,
                                                    237,
                                                    210)),
                                      ),
                                    ]),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets
                                            .fromLTRB(
                                      8.0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment
                                              .center,
                                      children: const [
                                        Text(
                                          'Complete KYC',
                                          style: TextStyle(
                                              fontSize:
                                                  12,
                                              fontWeight:
                                                  FontWeight
                                                      .w700),
                                        ),
                                        Text(
                                          'Create Category and \n earn \$25',
                                          style: TextStyle(
                                              fontSize:
                                                  9,
                                              fontWeight:
                                                  FontWeight
                                                      .w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  //
                  //
                  //
                  //
                  //02
                  //
                  //
                  //
                  //
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      4.0,
                      8.0,
                      4.0,
                      8.0,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.1,
                                      color:
                                          Colors.grey),
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              15)),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets
                                            .fromLTRB(
                                      0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child:
                                        Row(children: [
                                      Flexible(
                                        child:
                                            Image.asset(
                                          'assets/ellipse.png',
                                          cacheHeight:
                                              5,
                                          cacheWidth: 5,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                    ]),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets
                                            .fromLTRB(
                                      8.0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment
                                              .center,
                                      children: const [
                                        Text(
                                          'Create Category',
                                          style: TextStyle(
                                              fontSize:
                                                  12,
                                              fontWeight:
                                                  FontWeight
                                                      .w700),
                                        ),
                                        Text(
                                          'Create Category and \n earn \$25',
                                          style: TextStyle(
                                              fontSize:
                                                  9,
                                              fontWeight:
                                                  FontWeight
                                                      .w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  //
                  //
                  //
                  //03
                  //
                  //
                  //
                  //
                  //
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      4.0,
                      8.0,
                      4.0,
                      8.0,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.1,
                                      color:
                                          Colors.grey),
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              15)),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets
                                            .fromLTRB(
                                      0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child:
                                        Row(children: [
                                      Flexible(
                                        child:
                                            Image.asset(
                                          'assets/ellipse.png',
                                          cacheHeight:
                                              5,
                                          cacheWidth: 5,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        '02',
                                        style: TextStyle(
                                            fontSize:
                                                35,
                                            fontWeight:
                                                FontWeight
                                                    .w500,
                                            color: Color
                                                .fromARGB(
                                                    255,
                                                    251,
                                                    232,
                                                    216)),
                                      ),
                                    ]),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets
                                            .fromLTRB(
                                      8.0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment
                                              .center,
                                      children: const [
                                        Text(
                                          'Create Category',
                                          style: TextStyle(
                                              fontSize:
                                                  12,
                                              fontWeight:
                                                  FontWeight
                                                      .w700),
                                        ),
                                        Text(
                                          'Create Category and \n earn \$25',
                                          style: TextStyle(
                                              fontSize:
                                                  9,
                                              fontWeight:
                                                  FontWeight
                                                      .w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  //
                  //
                  //
                  //
                  //04
                  //
                  //
                  //
                  //
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      4.0,
                      8.0,
                      4.0,
                      8.0,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.1,
                                      color:
                                          Colors.grey),
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              15)),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets
                                            .fromLTRB(
                                      0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child:
                                        Row(children: [
                                      Flexible(
                                        child:
                                            Image.asset(
                                          'assets/ellipse.png',
                                          cacheHeight:
                                              5,
                                          cacheWidth: 5,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        '03',
                                        style: TextStyle(
                                            fontSize:
                                                35,
                                            fontWeight:
                                                FontWeight
                                                    .w500,
                                            color: Color
                                                .fromARGB(
                                                    255,
                                                    251,
                                                    235,
                                                    206)),
                                      ),
                                    ]),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets
                                            .fromLTRB(
                                      8.0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment
                                              .center,
                                      children: const [
                                        Text(
                                          'Set Limit to categ..',
                                          style: TextStyle(
                                              fontSize:
                                                  12,
                                              fontWeight:
                                                  FontWeight
                                                      .w700),
                                        ),
                                        Text(
                                          'Create Category and \n earn \$25',
                                          style: TextStyle(
                                              fontSize:
                                                  9,
                                              fontWeight:
                                                  FontWeight
                                                      .w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  //
                  //
                  //
                  //
                  //05
                  //
                  //
                  //
                  //
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      4.0,
                      8.0,
                      4.0,
                      8.0,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.1,
                                      color:
                                          Colors.grey),
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              15)),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets
                                            .fromLTRB(
                                      0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child:
                                        Row(children: [
                                      Flexible(
                                        child:
                                            Image.asset(
                                          'assets/ellipse.png',
                                          cacheHeight:
                                              5,
                                          cacheWidth: 5,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        '04',
                                        style: TextStyle(
                                            fontSize:
                                                35,
                                            fontWeight:
                                                FontWeight
                                                    .w500,
                                            color: Color
                                                .fromARGB(
                                                    255,
                                                    211,
                                                    214,
                                                    241)),
                                      ),
                                    ]),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets
                                            .fromLTRB(
                                      8.0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment
                                              .center,
                                      children: const [
                                        Text(
                                          'Add apps to categ..',
                                          style: TextStyle(
                                              fontSize:
                                                  12,
                                              fontWeight:
                                                  FontWeight
                                                      .w700),
                                        ),
                                        Text(
                                          'Create Category and \n earn \$25',
                                          style: TextStyle(
                                              fontSize:
                                                  9,
                                              fontWeight:
                                                  FontWeight
                                                      .w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  //
                  //
                  //
                  //
                  //06
                  //
                  //
                  //
                  //
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      4.0,
                      8.0,
                      4.0,
                      8.0,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.1,
                                      color:
                                          Colors.grey),
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              15)),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets
                                            .fromLTRB(
                                      0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child:
                                        Row(children: [
                                      Flexible(
                                        child:
                                            Image.asset(
                                          'assets/ellipse.png',
                                          cacheHeight:
                                              5,
                                          cacheWidth: 5,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        '05',
                                        style: TextStyle(
                                            fontSize:
                                                35,
                                            fontWeight:
                                                FontWeight
                                                    .w500,
                                            color: Color
                                                .fromARGB(
                                                    255,
                                                    247,
                                                    240,
                                                    220)),
                                      ),
                                    ]),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets
                                            .fromLTRB(
                                      8.0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment
                                              .center,
                                      children: const [
                                        Text(
                                          'Make on taxn',
                                          style: TextStyle(
                                              fontSize:
                                                  12,
                                              fontWeight:
                                                  FontWeight
                                                      .w700),
                                        ),
                                        Text(
                                          'Create Category and \n earn \$25',
                                          style: TextStyle(
                                              fontSize:
                                                  9,
                                              fontWeight:
                                                  FontWeight
                                                      .w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  //
                  //
                  //
                  //
                  //07
                  //
                  //
                  //
                  //
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      4.0,
                      8.0,
                      8.0,
                      8.0,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.1,
                                      color:
                                          Colors.grey),
                                  borderRadius:
                                      BorderRadius
                                          .circular(
                                              15)),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment
                                        .center,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets
                                            .fromLTRB(
                                      0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Row(
                                        children: [
                                          Flexible(
                                            child: Image
                                                .asset(
                                              'assets/appicon.png',
                                              cacheHeight:
                                                  30,
                                              cacheWidth:
                                                  30,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            '06',
                                            style: TextStyle(
                                                fontSize: 35,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                  255,
                                                  238,
                                                  236,
                                                  226,
                                                )),
                                          ),
                                        ]),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets
                                            .fromLTRB(
                                      8.0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment
                                              .center,
                                      children: const [
                                        Text(
                                          'Make 5 taxn in each categ..',
                                          style: TextStyle(
                                              fontSize:
                                                  12,
                                              fontWeight:
                                                  FontWeight
                                                      .w700),
                                        ),
                                        Text(
                                          'Create Category and \n earn \$25',
                                          style: TextStyle(
                                              fontSize:
                                                  9,
                                              fontWeight:
                                                  FontWeight
                                                      .w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  //
                  //
                  //
                  //
                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}