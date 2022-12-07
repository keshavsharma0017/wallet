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
            color: const Color.fromARGB(255, 48, 63, 159),
            borderRadius: BorderRadius.circular(25)),
        height: MediaQuery.of(context).size.height / 2,
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
                    color: Color.fromARGB(255, 223, 225, 243),
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
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        height: 70,
                        width: MediaQuery.of(context).size.width / 2,
                        child: Column(
                          children: const [
                            SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Projected Saving',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(255, 82, 82, 81),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '₹2,000',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        height: 70,
                        width: MediaQuery.of(context).size.width / 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: const [
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Highest Spent',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromARGB(255, 82, 82, 81),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                '₹2,000',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
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
                        borderRadius: BorderRadius.circular(8)),
                    height: 145,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                        8.0,
                        10.0,
                        0,
                        5.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Card balance',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 82, 82, 81),
                                fontWeight: FontWeight.w500),
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
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: Container(
                                  height: 15,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(58, 225, 59, 48),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Low Bal",
                                      style: TextStyle(
                                          fontSize: 9,
                                          color:
                                              Color.fromARGB(255, 225, 59, 48),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: SizedBox(
                                height: 70,
                                width: 70,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 48, 63, 159),
                                    shape: const CircleBorder(),
                                    elevation: 0,
                                  ),
                                  onPressed: () => showModalBottomSheet(
                                    context: context,
                                    builder: (context) => buildSheet(),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Add',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ),
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

Widget buildSheet() => Scaffold(
    appBar: AppBar(
      toolbarHeight: 70,
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      title: const Text(
        'Adding Transaction',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
      ),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 12.0, left: 15),
            child: Text(
              'Enter Spend Amount',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 15),
            child: Text(
              'Enter the amount that you have spend without using zero balance ',
              style: TextStyle(
                color: Colors.grey[800],
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    ));
