import 'package:flutter/material.dart';



import 'booking.dart';
import 'check_flight.dart';
import 'login.dart';

class AirlineReservation extends StatefulWidget {
  @override
  State<AirlineReservation> createState() => _AirlineReservationState();
}

class _AirlineReservationState extends State<AirlineReservation> {
  Color c = const Color.fromRGBO(196, 230, 251, 1);
  Color cb = const Color.fromRGBO(61, 103, 107, 1);
  gotoBooking(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Booking();
    }));
  }

  gotoFlight(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return CheckFlight();
    }));
  }

  logout(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Login();
    }));
  }

  // ignore: non_constant_identifier_names
  Widget screen_button(text, color, fun) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Container(
          height: 60,
          width: 300,
          decoration: BoxDecoration(
              color: c,
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: TextButton(
            onPressed: fun,
            child: Text(
              text,
              style: const TextStyle(color: Colors.black, fontSize: 25),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'AirlineReservation',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: cb,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              screen_button('Book Ticket', c, () => gotoBooking(context)),
              const SizedBox(
                height: 30,
              ),
              screen_button('Check Flight', c, () => gotoFlight(context)),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70),
                child: Container(
                    decoration: BoxDecoration(
                      color: cb,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    height: 40,
                    width: 100,
                    child: TextButton(
                      onPressed: () => logout(context),
                      child: const Text(
                        'Logout',
                        style: TextStyle(color: Colors.white, fontSize: 20),
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
