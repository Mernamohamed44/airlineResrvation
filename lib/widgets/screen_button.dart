import 'package:flutter/material.dart';
import 'package:zeft/colors.dart';

class ScreenButton extends StatelessWidget {
  const ScreenButton({Key? key, required this.text, required this.fun})
      : super(key: key);

  final String text;
  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Container(
        height: 60,
        width: 300,
        decoration: BoxDecoration(
            color: lightBlue,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: TextButton(
          onPressed: fun,
          child: Text(
            text,
            style: const TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
