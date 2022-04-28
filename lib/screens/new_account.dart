import 'package:flutter/material.dart';
import 'package:zeft/colors.dart';
import '../firebase/auth.dart';
import '../widgets/screen_textfield.dart';
import 'login.dart';

// ignore: must_be_immutable
class NewAccount extends StatelessWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: const Text('Create New Account'),
        backgroundColor: darkBlue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const ScreenTextField('Enter your name'),
              const SizedBox(
                height: 15,
              ),
              const ScreenTextField('Enter SSN'),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  controller: emailController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'must be entered';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    label: const Text('Enter email'),
                    fillColor: white,
                    filled: true,
                    enabledBorder:
                        const OutlineInputBorder(borderSide: BorderSide()),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  controller: passwordController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'must be entered';
                    } else {
                      return null;
                    }
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
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  controller: passwordController,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'must be entered';
                    } else {
                      return null;
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    label: const Text('confirm password'),
                    fillColor: white,
                    filled: true,
                    enabledBorder:
                        const OutlineInputBorder(borderSide: BorderSide()),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1)),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: darkBlue,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  height: 40,
                  width: 100,
                  child: TextButton(
                    onPressed: () async {
                      try {
                        await Auth()
                            .signUp(
                                emailController.text, passwordController.text)
                            .then((value) => Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (_) {
                                  return const Login();
                                })));
                      } catch (error) {
                        var errorMessage = 'Authentication failed';
                        if (error.toString().contains('EMAIl_EXISTS')) {
                          errorMessage = 'This email address is already use';
                        } else if (error.toString().contains('INVALID_EMAIL')) {
                          errorMessage = 'This is not email address ';
                        } else if (error.toString().contains('WEAK_PASSWORD')) {
                          errorMessage = 'This password is too weak ';
                        } else if (error
                            .toString()
                            .contains('EMAIL_NOT_FOUND')) {
                          errorMessage = 'Can not find user with this email ';
                        } else if (error
                            .toString()
                            .contains('INVALID_PASSWORD')) {
                          errorMessage = 'Invalid password ';
                        }
                        showDialogError(errorMessage);
                      }
                    },
                    child: Text(
                      'Done',
                      style: TextStyle(color: white, fontSize: 20),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
