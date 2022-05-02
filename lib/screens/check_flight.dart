import 'package:flutter/material.dart';
import 'package:zeft/colors.dart';
import 'package:zeft/flight_data.dart';
import 'package:zeft/widgets/check_ticket_data_box.dart';

// ignore: must_be_immutable
class CheckFlight extends StatefulWidget {
  const CheckFlight({Key? key}) : super(key: key);

  @override
  State<CheckFlight> createState() => _CheckFlightState();
}

class _CheckFlightState extends State<CheckFlight> {
  final myController = TextEditingController();

  String id = "";
  String departureAirport = "";
  String arrivalAirport = "";
  String departureDate = "";
  String arrivalDate = "";
  String ticketClass = "";
  String paymentMethod = "";
  String price = "";

  int get flightIndex {
    switch (myController.text) {
      case "12345":
        return 0;
      case "56789":
        return 1;
      case "10000":
        return 2;
      case "23456":
        return 3;
      case "98765":
        return 4;
      case "54321":
        return 5;
      case "20000":
        return 6;
      case "50000":
        return 7;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: const Text('Check ticket'),
        backgroundColor: darkBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: myController,
                        decoration: const InputDecoration(
                          label: Text("Enter ticket ID"),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide()),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      color: darkBlue,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            id = flightData[flightIndex].id;
                            departureAirport =
                                flightData[flightIndex].departureAirport;
                            arrivalAirport =
                                flightData[flightIndex].arrivalAirport;
                            departureDate =
                                flightData[flightIndex].departureDate;
                            arrivalDate = flightData[flightIndex].arrivalDate;
                            ticketClass = flightData[flightIndex].ticketClass;
                            paymentMethod =
                                flightData[flightIndex].paymentMethod;
                            price = flightData[flightIndex].price;
                          });
                        },
                        icon: Icon(
                          Icons.flight,
                          color: white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              DataBox(
                id: id,
                price: price,
                departureDate: departureDate,
                paymentMethod: paymentMethod,
                arrivalDate: arrivalDate,
                ticketClass: ticketClass,
                arrivalAirport: arrivalAirport,
                departureAirport: departureAirport,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
