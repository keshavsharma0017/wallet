import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Blogs extends StatelessWidget {
  const Blogs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        7,
        5,
        8,
        0,
      ),
      child: SizedBox(
        height: 320,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Blogs",
              style: GoogleFonts.poppins(
                color: Color.fromARGB(255, 87, 87, 87),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                0,
                0,
                8,
                8,
              ),
              child: SizedBox(
                height: 265,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    //
                    //
                    //
                    //
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        6.0,
                        8.0,
                        6.0,
                        8.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.1,
                            color: Colors.grey.shade400,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                12,
                                12,
                                12,
                                0,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color:
                                      const Color.fromARGB(255, 230, 230, 230),
                                ),
                                height: 110,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(
                                12,
                                12,
                                12,
                                5,
                              ),
                              child: Text(
                                '4 methods of calculating Network, which no one will \ntell you',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                12,
                                0,
                                12,
                                0,
                              ),
                              child: Text(
                                'Read Time: 8 mins',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                12,
                                5,
                                12,
                                0,
                              ),
                              child: Row(
                                children: [
                                  Image.asset("assets/pfp2.png"),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    'Ann Korlowski',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 55.0),
                                    child: Text(
                                      '08/09/2022',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        6.0,
                        8.0,
                        6.0,
                        8.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.1,
                            color: Colors.grey.shade400,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                12,
                                12,
                                12,
                                0,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color:
                                      const Color.fromARGB(255, 230, 230, 230),
                                ),
                                height: 110,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(
                                12,
                                12,
                                12,
                                5,
                              ),
                              child: Text(
                                '4 methods of calculating Network, which no one will \ntell you',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                12,
                                0,
                                12,
                                0,
                              ),
                              child: Text(
                                'Read Time: 8 mins',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                12,
                                5,
                                12,
                                0,
                              ),
                              child: Row(
                                children: [
                                  Image.asset("assets/pfp2.png"),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    'Ann Korlowski',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 55.0),
                                    child: Text(
                                      '08/09/2022',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    //
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                        6.0,
                        8.0,
                        6.0,
                        8.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.1,
                            color: Colors.grey.shade400,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                12,
                                12,
                                12,
                                0,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color:
                                      const Color.fromARGB(255, 230, 230, 230),
                                ),
                                height: 110,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(
                                12,
                                12,
                                12,
                                5,
                              ),
                              child: Text(
                                '4 methods of calculating Network, which no one will \ntell you',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                12,
                                0,
                                10,
                                0,
                              ),
                              child: Text(
                                'Read Time: 8 mins',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                12,
                                5,
                                12,
                                0,
                              ),
                              child: Row(
                                children: [
                                  Image.asset("assets/pfp2.png"),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    'Ann Korlowski',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 55.0),
                                    child: Text(
                                      '08/09/2022',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    //
                    //
                    //
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
