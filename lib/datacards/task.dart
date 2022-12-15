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
        height: 210,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Task",
              style: TextStyle(
                  color: Color.fromARGB(255, 87, 87, 87),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 180,
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
                    child: Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    Positioned(
                                      left: -9,
                                      top: -9,
                                      child: Container(
                                        height: 80,
                                        width: 80,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFF6EDD2),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(150),
                                            bottomRight: Radius.circular(150),
                                            topLeft: Radius.circular(150),
                                            topRight: Radius.circular(150),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      child: Image.asset(
                                        'assets/key1.png',
                                        height: 70,
                                        width: 70,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  '01',
                                  style: TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          Color.fromARGB(255, 246, 237, 210)),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                8.0,
                                8.0,
                                8.0,
                                8.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    'Complete KYC',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    'Create Category and \n earn \$25',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
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
                          height: 160,
                          width: 160,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Positioned(
                                              left: -9,
                                              top: -9,
                                              child: Container(
                                                height: 80,
                                                width: 80,
                                                decoration: const BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 214, 244, 222),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(150),
                                                    bottomRight:
                                                        Radius.circular(150),
                                                    topLeft:
                                                        Radius.circular(150),
                                                    topRight:
                                                        Radius.circular(150),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              child: Image.asset(
                                                'assets/bur.png',
                                                height: 70,
                                                width: 70,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              311,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset("assets/tick.png"),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      8.0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Create Category',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          'Create Category and \n earn \$25',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400),
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
                          height: 160,
                          width: 160,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(
                                    15,
                                  )),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Positioned(
                                              left: -9,
                                              top: -9,
                                              child: Container(
                                                height: 80,
                                                width: 80,
                                                decoration: const BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 251, 232, 216),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(150),
                                                    bottomRight:
                                                        Radius.circular(150),
                                                    topLeft:
                                                        Radius.circular(150),
                                                    topRight:
                                                        Radius.circular(150),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              child: Image.asset(
                                                'assets/bur.png',
                                                height: 70,
                                                width: 70,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        const Text(
                                          '02',
                                          style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 251, 232, 216)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      8.0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Create Category',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          'Create Category and \n earn \$25',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400),
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
                          height: 160,
                          width: 160,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Positioned(
                                              left: -9,
                                              top: -9,
                                              child: Container(
                                                height: 80,
                                                width: 80,
                                                decoration: const BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 251, 235, 206),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(150),
                                                    bottomRight:
                                                        Radius.circular(150),
                                                    topLeft:
                                                        Radius.circular(150),
                                                    topRight:
                                                        Radius.circular(150),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              child: Image.asset(
                                                'assets/emo1.png',
                                                height: 70,
                                                width: 70,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        const Text(
                                          '03',
                                          style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 251, 235, 206)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      8.0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Set Limit to categ..',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          'Create Category and \n earn \$25',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400),
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
                          height: 160,
                          width: 160,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Positioned(
                                              left: -9,
                                              top: -9,
                                              child: Container(
                                                height: 80,
                                                width: 80,
                                                decoration: const BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 211, 214, 241),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(150),
                                                    bottomRight:
                                                        Radius.circular(150),
                                                    topLeft:
                                                        Radius.circular(150),
                                                    topRight:
                                                        Radius.circular(150),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              child: Image.asset(
                                                'assets/emo2.png',
                                                height: 70,
                                                width: 70,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        const Text(
                                          '04',
                                          style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 211, 214, 241)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      8.0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Add apps to categ..',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          'Create Category and \n earn \$25',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400),
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
                          height: 160,
                          width: 160,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Positioned(
                                              left: -9,
                                              top: -9,
                                              child: Container(
                                                height: 80,
                                                width: 80,
                                                decoration: const BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 247, 240, 220),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(150),
                                                    bottomRight:
                                                        Radius.circular(150),
                                                    topLeft:
                                                        Radius.circular(150),
                                                    topRight:
                                                        Radius.circular(150),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              child: Image.asset(
                                                'assets/emo3.png',
                                                height: 70,
                                                width: 70,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        const Text(
                                          '05',
                                          style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 247, 240, 220)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      8.0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Make on taxn',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          'Create Category and \n earn \$25',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400),
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
                          height: 160,
                          width: 160,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 0.1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Positioned(
                                              left: -9,
                                              top: -9,
                                              child: Container(
                                                height: 80,
                                                width: 80,
                                                decoration: const BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 238, 236, 226),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(150),
                                                    bottomRight:
                                                        Radius.circular(150),
                                                    topLeft:
                                                        Radius.circular(150),
                                                    topRight:
                                                        Radius.circular(150),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              child: Image.asset(
                                                'assets/emo4.png',
                                                height: 70,
                                                width: 70,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        const Text(
                                          '06',
                                          style: TextStyle(
                                              fontSize: 35,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 238, 236, 226)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      8.0,
                                      0,
                                      8.0,
                                      8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Make 5 taxn in each categ..',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          'Create Category and \n earn \$25',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400),
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
