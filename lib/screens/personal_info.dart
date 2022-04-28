import 'package:flutter/material.dart';
import 'package:zeft/colors.dart';
import '../widgets/screen_textfield.dart';

// ignore: must_be_immutable
class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Information'),
        backgroundColor: darkBlue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const ScreenTextField('Your full name'),
              const SizedBox(
                height: 30,
              ),
              const ScreenTextField('Social security number'),
              const SizedBox(
                height: 30,
              ),
              const ScreenTextField('E-mail'),
              const SizedBox(
                height: 30,
              ),
              const ScreenTextField('Passport number'),
              const SizedBox(
                height: 30,
              ),
              const ScreenTextField('Credit card number'),
              const SizedBox(
                height: 30,
              ),
              const ScreenTextField('Birth date'),
              const SizedBox(
                height: 80,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: darkBlue,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  height: 40,
                  width: 200,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      '   Confirm   ',
                      style: TextStyle(color: white),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
