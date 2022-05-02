
import 'package:flutter/material.dart';
import 'package:zeft/colors.dart';
import '../firebase/auth.dart';
import 'airline_reservation.dart';
import 'new_account.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

gotoAirlineReservation(BuildContext ctx) {
  Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
    return const AirlineReservation();
  }));
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void showDialogMessage() {
      showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                content: const Text("You must enter email and password."),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: const Text('back'))
                ],
              ));
    }

    return Scaffold(
      //C5E7FC
      backgroundColor: lightBlue,
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
                      decoration: InputDecoration(
                        label: const Text('Enter Email'),
                        fillColor: white,
                        filled: true,
                        enabledBorder:
                            const OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: const OutlineInputBorder(
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
                      decoration: InputDecoration(
                        label: const Text('Enter password'),
                        fillColor: white,
                        filled: true,
                        enabledBorder:
                            const OutlineInputBorder(borderSide: BorderSide()),
                        focusedBorder: const OutlineInputBorder(
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
                      color: darkBlue,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (emailController.text.isEmpty ||
                            passwordController.text.isEmpty) {
                          showDialogMessage();
                        }
                        else {
                          Auth()
                              .signIn(
                                  emailController.text, passwordController.text)
                              .then((value) => Navigator.pushReplacement(
                                      context, MaterialPageRoute(builder: (_) {
                                    return const AirlineReservation();
                                  })));
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: white, fontSize: 20),
                      ),
                    )),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      child: const Center(
                          child: Text(
                        "Sign up",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                      )),
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return const NewAccount();
                        }));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
