import 'package:flutter/material.dart';
import 'package:zeft/colors.dart';
import 'package:zeft/flight_data.dart';
import 'package:zeft/screens/personal_info.dart';

class AvaCard extends StatelessWidget {
  const AvaCard(
      {Key? key, required this.index})
      : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: lightBlue,
        elevation: 10,
        child: Container(
          height: 170,
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(flightData[index].departureDate + " --> " + flightData[index].arrivalDate, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Text(flightData[index].departureAirport + " --> " + flightData[index].arrivalAirport, style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Text("Price: " + flightData[index].price, style: const TextStyle(fontSize: 20)),
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
                                return const PersonalInfo();
                              }))
                            }))
              ],
            ),
          ]),
        ));
  }
}
