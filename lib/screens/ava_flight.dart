import 'package:flutter/material.dart';
import 'package:zeft/colors.dart';
import 'package:zeft/widgets/ava_card.dart';
import 'ticket_info.dart';

// ignore: must_be_immutable
class AvailableFlight extends StatelessWidget {
  const AvailableFlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: const Text('Available flight'),
        backgroundColor: darkBlue,
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
                    index: 0,
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return const TicketInfo();
                    }));
                  }),
              const SizedBox(
                height: 20,
              ),
              const AvaCard(index: 1),
              const SizedBox(
                height: 20,
              ),
              const AvaCard(index: 2),
              const SizedBox(
                height: 20,
              ),
              const AvaCard(index: 3),
              const SizedBox(
                height: 20,
              ),
              const AvaCard(index: 4),
              const SizedBox(
                height: 20,
              ),
              const AvaCard(index: 5),
              const SizedBox(
                height: 20,
              ),
              const AvaCard(index: 6),
              const SizedBox(
                height: 20,
              ),
              const AvaCard(index: 7),
            ],
          ),
        ),
      ),
    );
  }
}
