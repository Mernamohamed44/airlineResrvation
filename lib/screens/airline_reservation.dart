import 'package:flutter/material.dart';
import 'package:zeft/colors.dart';
import 'package:zeft/widgets/screen_button.dart';

import 'booking.dart';
import 'check_flight.dart';
import 'login.dart';

class AirlineReservation extends StatefulWidget {
  const AirlineReservation({Key? key}) : super(key: key);

  @override
  State<AirlineReservation> createState() => _AirlineReservationState();
}

class _AirlineReservationState extends State<AirlineReservation> {
  gotoBooking(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const Booking();
    }));
  }

  gotoFlight(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const CheckFlight();
    }));
  }

  logout(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const Login();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AirlineReservation',
          style: TextStyle(color: white),
        ),
        backgroundColor: darkBlue,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              ScreenButton(
                  text: 'Book Ticket', fun: () => gotoBooking(context)),
              const SizedBox(height: 30),
              ScreenButton(
                  text: 'Check Flight', fun: () => gotoFlight(context)),
              const SizedBox(height: 100),
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
                      onPressed: () => logout(context),
                      child: Text(
                        'Logout',
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
