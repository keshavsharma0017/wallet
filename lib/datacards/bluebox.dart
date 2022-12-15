import 'package:flutter/material.dart';
import 'package:project3/datacards/data.dart';

import 'blue2.dart';

class Bluebox extends StatefulWidget {
  const Bluebox({
    Key? key,
  }) : super(key: key);

  @override
  State<Bluebox> createState() => _BlueboxState();
}

class _BlueboxState extends State<Bluebox> {
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
                    '₹12,000',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 200,
            // ),
            Positioned(
              bottom: 20,
              // left: 0,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  12.0,
                  7.0,
                  10.0,
                  0.0,
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
                          height: 75,
                          width: MediaQuery.of(context).size.width / 2.2,
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
                          height: 75,
                          width: MediaQuery.of(context).size.width / 2.2,
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
                      height: 155,
                      width: MediaQuery.of(context).size.width / 2.7,
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
                                            color: Color.fromARGB(
                                                255, 225, 59, 48),
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
                                      backgroundColor: const Color.fromARGB(
                                          255, 48, 63, 159),
                                      shape: const CircleBorder(),
                                      elevation: 0,
                                    ),
                                    onPressed: () => showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      isDismissible: false,
                                      // enableDrag: true,
                                      isScrollControlled: true,
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
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildSheet() => DraggableScrollableSheet(
      initialChildSize: 0.9,
      maxChildSize: 0.9,
      minChildSize: 0.7,
      builder: (context, scrollController) => Container(
        color: Colors.white,
        child: ListView(
          controller: scrollController,
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(width: 0.75, color: Colors.grey.shade400),
              )),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(
                      10.0,
                      8.0,
                      4.0,
                      8.0,
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back, size: 30)),
                  ),
                  const Text(
                    "Adding Transaction",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0, left: 15),
                    child: Text(
                      'Enter Spend Amount',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 12, left: 15, bottom: 10),
                    child: Text(
                      'Enter the amount that you have spend without using zero balance ',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 48, 63, 159),
                        labelText: 'Amount',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0, left: 15),
                    child: Text(
                      'Enter Date',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 48, 63, 159),
                        labelText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0, left: 15),
                    child: Text(
                      'Mode Of payment',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all<double>(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 48, 63, 159)),
                              ),
                            ),
                          ),
                          child: const Text(
                            'UPI',
                            style: TextStyle(
                              color: Color.fromARGB(255, 48, 63, 159),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all<double>(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 48, 63, 159)),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Card',
                            style: TextStyle(
                              color: Color.fromARGB(255, 48, 63, 159),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all<double>(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 48, 63, 159)),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Cash',
                            style: TextStyle(
                              color: Color.fromARGB(255, 48, 63, 159),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0, left: 15),
                    child: Text(
                      'Quick note',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 48, 63, 159),
                        labelText: 'Quick note',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 48, 63, 159),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text('Save'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
