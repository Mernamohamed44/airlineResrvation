import 'package:flutter/material.dart';

import '../widgets/screen_textfield.dart';

// ignore: must_be_immutable
class PersonalInfo extends StatelessWidget {
  Color cb = const Color.fromRGBO(61, 103, 107, 1);
  Widget miniTextfield() {
    return  SizedBox(
      height: 30,
      width: 30,
      child: TextField(
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 10)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Information'),
        backgroundColor: cb,
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
                    color: cb,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  height: 40,
                  width: 200,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      '   Confirm   ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
