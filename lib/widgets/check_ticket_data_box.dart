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
  }) : super(key: key);

  final String id;
  final String departureAirport;
  final String arrivalAirport;
  final String departureDate;
  final String arrivalDate;
  final String ticketClass;
  final String paymentMethod;
  final String price;

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
              const Text('Name: Merna Mohamed', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
              const Text('SSN:8686866439', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
              const Text('PN:4678825889', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
              const Text('Age:21', style: TextStyle(fontSize: 20)),
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
              const Text('Take off : 7pm', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
              const Text('landing : 12am', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
              Text('class: ' + ticketClass, style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
              Text('payment method: ' + paymentMethod,
                  style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
              const Text('seat : 3A ', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 5),
              const Text('luggage weight : 20 kg ',
                  style: TextStyle(fontSize: 20)),
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
