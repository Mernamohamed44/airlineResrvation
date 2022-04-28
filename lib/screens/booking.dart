import 'package:flutter/material.dart';
import 'package:zeft/colors.dart';

import '../widgets/screen_textfield.dart';
import 'ava_flight.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  static double calcPrice(int noTravellers, double ticketPrice) {
    return noTravellers * ticketPrice;
  }

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  gotoAvaFlight(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return AvailableFlight();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Booking',
          style: TextStyle(color: white),
        ),
        backgroundColor: darkBlue,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              const ScreenTextField("Departure airport"),
              const SizedBox(
                height: 15,
              ),
              const ScreenTextField("Arrival airport"),
              const SizedBox(
                height: 15,
              ),
              const ScreenTextField("Departure date"),
              const SizedBox(
                height: 15,
              ),
              const ScreenTextField("Return date"),
              const SizedBox(
                height: 15,
              ),
              const ScreenTextField("Number of travellers"),
              const SizedBox(
                height: 15,
              ),
              const ScreenTextField("Class"),
              const SizedBox(
                height: 15,
              ),
              const ScreenTextField("Payment method"),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70),
                child: Container(
                    decoration: BoxDecoration(
                      color: darkBlue,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    height: 40,
                    width: 100,
                    child: TextButton(
                      onPressed: () => gotoAvaFlight(context),
                      child: Text(
                        'Search for flights',
                        style: TextStyle(color: white, fontSize: 20),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
