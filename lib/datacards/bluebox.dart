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
        height: MediaQuery.of(context).size.height / 1.9,
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
                                    backgroundColor: Colors.transparent,
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
          ],
        ),
      ),
    );
  }
}

Widget buildSheet() => DraggableScrollableSheet(
      initialChildSize: 0.9,
      maxChildSize: 0.9,
      minChildSize: 0.9,
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
                        onPressed: () {},
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
                        fillColor: Colors.blue[900],
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
                        fillColor: Colors.blue[900],
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
                            // maximumSize: MaterialStateProperty.all<Size>(

                            // const Size.fromWidth(1)),

                            elevation: MaterialStateProperty.all<double>(0),

                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),

                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: const BorderSide(color: Colors.blue),
                              ),
                            ),
                          ),
                          child: const Text(
                            'UPI',
                            style: TextStyle(
                              color: Colors.blue,
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
                                side: const BorderSide(color: Colors.blue),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Card',
                            style: TextStyle(
                              color: Colors.blue,
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
                                side: const BorderSide(color: Colors.blue),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Cash',
                            style: TextStyle(
                              color: Colors.blue,
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
                        fillColor: Colors.blue[900],
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
