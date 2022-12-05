import 'package:flutter/material.dart';

class Quotes extends StatelessWidget {
  const Quotes({
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
        height: 210,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(
                    left: BorderSide(
                        color: Color.fromARGB(
                          255,
                          201,
                          201,
                          201,
                        ),
                        width: 4)),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "A budget doesn't\nlimit your freedom;\nit gives you\nfreedom",
                  style: TextStyle(
                      color: Color.fromARGB(
                        255,
                        201,
                        201,
                        201,
                      ),
                      fontSize: 29,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
