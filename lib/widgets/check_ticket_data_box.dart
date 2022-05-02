import 'package:flutter/material.dart';
import 'package:zeft/colors.dart';

class DataBox extends StatelessWidget {
  const DataBox({
    Key? key,
    required this.id,
    required this.departureAirport,
    required this.arrivalAirport,
    required this.departureDate,
    required this.arrivalDate,
    required this.ticketClass,
    required this.paymentMethod,
    required this.price,
    required this.takeOff,
    required this.landing,
    required this.seat,
    required this.luggageWeight,
  }) : super(key: key);

  final String id;
  final String departureAirport;
  final String arrivalAirport;
  final String departureDate;
  final String arrivalDate;
  final String ticketClass;
  final String paymentMethod;
  final String price;
  final String takeOff;
  final String landing;
  final String seat;
  final String luggageWeight;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: lightBlue,
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            border: Border.all(color: Colors.black)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Personal information:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(height: 20),
              const Text('Name: Merna Mohamed Elseady', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
              const Text('SSN: 8686866439', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
              const Text('Phone number: 1234567890', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
              const Text('Age: 21', style: TextStyle(fontSize: 20)),
              const SizedBox(
                height: 50,
              ),
              const Text('Flight Info :',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              const SizedBox(height: 20),
              Text('Flight ID: ' + id, style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
              Text('Departure date: ' + departureDate,
                  style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
              Text('Arrival date: ' + arrivalDate,
                  style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
               Text('Take off: '+takeOff, style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
               Text('Landing: '+landing, style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
              Text('Class: ' + ticketClass,
                  style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
              Text('Payment method: ' + paymentMethod,
                  style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
               Text('Seat: '+seat, style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
               Text('Luggage weight: '+luggageWeight,
                  style: const TextStyle(fontSize: 20)),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
