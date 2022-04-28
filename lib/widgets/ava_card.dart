import 'package:flutter/material.dart';
import 'package:zeft/colors.dart';
import 'package:zeft/screens/booking.dart';

class AvaCard extends StatelessWidget {
  const AvaCard(
      {Key? key, required this.text1, required this.text2, required this.text3})
      : super(key: key);

  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: lightBlue,
        elevation: 40,
        child: Container(
          height: 170,
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(text1, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Text(text2, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Text(text3, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: darkBlue,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    height: 30,
                    width: 100,
                    child: TextButton(
                        child: Text(
                          'book',
                          style: TextStyle(color: white),
                        ),
                        onPressed: () => {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (_) {
                                return const Booking();
                              }))
                            }))
              ],
            ),
          ]),
        ));
  }
}
