import 'package:flutter/material.dart';

import 'personal_info.dart';

// ignore: must_be_immutable
class TicketInfo extends StatelessWidget {
  Color cb = const Color.fromRGBO(61, 103, 107, 1);
  Color c = const Color.fromRGBO(196, 230, 251, 1);

  TicketInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticket Information'),
        backgroundColor: cb,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              color: c,
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              border: Border.all(color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Airline: Al- Jazeera airlines',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Flight ID : 12345',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Departure date: 24 oct.2022',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Take off : 7 pm',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'landing : 12 am',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'class : Economy class ',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'payment method : credit card ',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'seat : 3A ',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'luggage weight : 20 kg ',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: cb,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  height: 40,
                  width: 200,
                  child: TextButton(
                    onPressed: () => {
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (_) {
                        return PersonalInfo();
                      }))
                    },
                    child: const Text(
                      'Book this ticket',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
