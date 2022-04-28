import 'package:flutter/material.dart';
import 'package:zeft/colors.dart';
import '../widgets/screen_textfield.dart';

// ignore: must_be_immutable
class CheckFlight extends StatelessWidget {
  const CheckFlight({Key? key}) : super(key: key);

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
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const ScreenTextField('Enter ticket ID'),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 550,
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
                  children: const [
                    Text(
                      'Personal information:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(height: 20),
                    Text('Name: Merna Mohamed', style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5),
                    Text('SSN:8686866439', style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5),
                    Text('PN:4678825889', style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5),
                    Text('Age:21', style: TextStyle(fontSize: 20)),
                    SizedBox(
                      height: 50,
                    ),
                    Text('Flight Info :',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25)),
                    SizedBox(height: 20),
                    Text('Flight ID :12345', style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5),
                    Text('Departure date : 24 oct, 22',
                        style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5),
                    Text('Take off : 7pm', style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5),
                    Text('landing : 12am', style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5),
                    Text('class : Economy class ',
                        style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5),
                    Text('payment method : credit card ',
                        style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5),
                    Text('seat : 3A ', style: TextStyle(fontSize: 20)),
                    SizedBox(height: 5),
                    Text('luggage weight : 20 kg ',
                        style: TextStyle(fontSize: 20)),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
