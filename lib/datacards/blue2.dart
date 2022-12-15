import 'package:flutter/material.dart';
import 'package:project3/datacards/bluebox.dart';
import 'package:project3/datacards/data.dart';

class Blue2 extends StatefulWidget {
  const Blue2({super.key});

  @override
  State<Blue2> createState() => _Blue2State();
}

class _Blue2State extends State<Blue2> {
  @override
  Widget build(BuildContext context) {
    if (Appdata.swap) {
      setState(() {
        Appdata.x = const Bluebox();
      });
    } else {
      setState(() {
        Appdata.x = const Blue2();
      });
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 48, 63, 159),
            borderRadius: BorderRadius.circular(25)),
        height: MediaQuery.of(context).size.height / 1.5,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Total Spends',
                    style: TextStyle(
                        color: Color.fromARGB(255, 223, 225, 243),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '₹0',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  12.0,
                  7.0,
                  10.0,
                  0.0,
                ),
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width - 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Pending KYC',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            const Text(
                              'Lorem Ipsum is simply dummy test\n of the printing and typsetting \nindustry.Lorem',
                              style: TextStyle(fontSize: 10),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      Appdata.swap = true;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    backgroundColor:
                                        const Color.fromARGB(255, 225, 59, 48),
                                    padding: const EdgeInsets.fromLTRB(
                                      20,
                                      15,
                                      20,
                                      15,
                                    ),
                                  ),
                                  child: const Text('Complete Now')),
                            )
                          ],
                        ),
                      ),
                      // Stack(
                      //   children: [
                      //     Positioned(
                      //       top: -9,
                      //       right: -9,
                      //       child: Container(
                      //         height: 20,
                      //         width: 20,
                      //         decoration: const BoxDecoration(
                      //           color: Color.fromARGB(255, 247, 240, 220),
                      //           borderRadius: BorderRadius.only(
                      //             bottomLeft: Radius.circular(150),
                      //             bottomRight: Radius.circular(150),
                      //             topLeft: Radius.circular(150),
                      //             topRight: Radius.circular(150),
                      //           ),
                      //         ),
                      //       ),
                      //     )
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
