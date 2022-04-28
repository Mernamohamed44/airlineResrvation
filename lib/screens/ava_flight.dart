import 'package:flutter/material.dart';
import 'package:zeft/widgets/ava_card.dart';
import 'ticket_info.dart';

// ignore: must_be_immutable
class AvailableFlight extends StatelessWidget {
  Color c = const Color.fromRGBO(196, 230, 251, 1);
  Color cb = const Color.fromRGBO(61, 103, 107, 1);

  AvailableFlight({Key? key}) : super(key: key);

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
                  child: const AvaCard(
                      text1: 'Tuesday,24 oct.22',
                      text2: 'Cairo -> kuwait',
                      text3: 'Price:9000 EGP'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return TicketInfo();
                    }));
                  }),
              const SizedBox(
                height: 20,
              ),
              const AvaCard(
                  text1: 'Monday,3 sep.22',
                  text2: 'Cairo -> dubai',
                  text3: 'Price:7000 EGP'),
              const SizedBox(
                height: 20,
              ),
              const AvaCard(
                  text1: 'Sunday,14 mar.22',
                  text2: 'paris -> cairo',
                  text3: 'Price:70000 EGP'),
              const SizedBox(
                height: 20,
              ),
              const AvaCard(
                  text1: 'Monday,3 sep.22',
                  text2: 'Cairo -> london',
                  text3: 'Price:50000 EGP'),
            ],
          ),
        ),
      ),
    );
  }
}
