

import 'package:flutter/material.dart';


import '../firebase/auth.dart';
import 'airline_reservation.dart';
import 'new_account.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

Color c = const Color.fromRGBO(196, 230, 251, 1);
Color cb = const Color.fromRGBO(61, 103, 107, 1);

gotoAirlineReservation(BuildContext ctx) {
  Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
    return const AirlineReservation();
  }));
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void showDialogError(String message) {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('An Error Occurred'),
          content: Text(message),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: const Text('OK'))
          ],
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //C5E7FC
      backgroundColor: c,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "images/sw.png",
                  width: 300,
                  height: 150,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 50,
                    child: TextFormField(
                      controller: emailController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'must be entered';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        label: Text('Enter Email'),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 50,
                    child: TextFormField(
                      controller: passwordController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'must be entered';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text('Enter password'),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: cb,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () async{
                       try{
                         await Auth().signIn(emailController.text,passwordController.text).
                        then((value) => Navigator.pushReplacement(context,MaterialPageRoute(builder: (_){
                          return const AirlineReservation();
                        }
                        )));
                       }
                       catch (error) {
                         var errorMessage = 'Authentication failed';
                         if (error.toString().contains('EMAIL_NOT_FOUND')) {
                           errorMessage = 'This email address is not found ';
                         } else if (error.toString().contains('INVALID_EMAIL')) {
                           errorMessage = 'This is not email address ';
                         } else if (error.toString().contains('WEAK_PASSWORD')) {
                           errorMessage = 'This password is too weak ';
                         }  else if (error
                             .toString()
                             .contains('INVALID_PASSWORD')) {
                           errorMessage = 'Invalid password ';
                         }
                         showDialogError(errorMessage);
                       }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )),
                const SizedBox(
                  height: 25,
                ),
                InkWell(
                  child: const Center(
                      child: Text(
                    'Create new account',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue),
                  )),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return const NewAccount();
                    }));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
