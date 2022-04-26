import 'package:flutter/material.dart';

import 'booking.dart';
import 'ticket_info.dart';

// ignore: must_be_immutable
class AvailableFlight extends StatelessWidget {
  Color c = const Color.fromRGBO(196, 230, 251, 1);
  Color cb = const Color.fromRGBO(61, 103, 107, 1);

  AvailableFlight({Key? key}) : super(key: key);

  Widget card(text1, text2, text3, ctx) {
    return Card(
        color: c,
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
                      color: cb,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    height: 30,
                    width: 100,
                    child: TextButton(
                        child: const Text(
                          'book',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () => {
                              Navigator.of(ctx)
                                  .push(MaterialPageRoute(builder: (_) {
                                return Booking();
                              })),
                            }))
              ],
            ),
          ]),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available flight'),
        backgroundColor: cb,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              InkWell(
                  child: card('Tuesday,24 oct.22', 'Cairo -> kuwait',
                      'Price:9000 EGP', context),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return TicketInfo();
                    }));
                  }),
              const SizedBox(
                height: 20,
              ),
              card('Monday,3 sep.22', 'Cairo -> dubai', 'Price:7000 EGP',
                  context),
              const SizedBox(
                height: 20,
              ),
              card('Sunday,14 mar.22', 'paris -> cairo', 'Price:70000 EGP',
                  context),
              const SizedBox(
                height: 20,
              ),
              card('Monday,3 sep.22', 'Cairo -> london', 'Price:50000 EGP',
                  context),
            ],
          ),
        ),
      ),
    );
  }
}
