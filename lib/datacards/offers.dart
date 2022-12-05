import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        8.0,
        5,
        8.0,
        0,
      ),
      child: SizedBox(
        height: 340,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Offers & Rewards",
              style: TextStyle(
                  color: Color.fromARGB(255, 87, 87, 87),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 300,
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
                      8.0,
                      8.0,
                      6.0,
                      8.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey.shade300,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: 245,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 230, 230, 230),
                            ),
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'A rewarding Celebration',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(
                              8.0,
                              0,
                              8.0,
                              0,
                            ),
                            child: Text(
                              'Win rewarding from Citizen,peter england, and More',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              8.0,
                              10.0,
                              8.0,
                              8.0,
                            ),
                            child: Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.5,
                                    color:
                                        const Color.fromARGB(255, 24, 63, 159)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  "Explore rewards +",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 24, 63, 159),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          )
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
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey.shade300,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 230, 230, 230),
                            ),
                            height: 150,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'A rewarding Celebration',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(
                              8.0,
                              0,
                              8.0,
                              0,
                            ),
                            child: Text(
                              'Win rewarding from Citizen,peter england, and More',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              8.0,
                              10.0,
                              8.0,
                              8.0,
                            ),
                            child: Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.5,
                                    color:
                                        const Color.fromARGB(255, 24, 63, 159)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  "Explore rewards +",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 24, 63, 159),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          )
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
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey.shade300,
                            blurStyle: BlurStyle.outer,
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 230, 230, 230),
                            ),
                            height: 150,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'A rewarding Celebration',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(
                              8.0,
                              0,
                              8.0,
                              0,
                            ),
                            child: Text(
                              'Win rewarding from Citizen,peter england, and More',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              8.0,
                              10.0,
                              8.0,
                              8.0,
                            ),
                            child: Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.5,
                                    color:
                                        const Color.fromARGB(255, 24, 63, 159)),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  "Explore rewards +",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 24, 63, 159),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          )
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
            )
          ],
        ),
      ),
    );
  }
}
