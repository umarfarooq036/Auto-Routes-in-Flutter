import 'dart:convert';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:autoroutes/main.dart';
import 'package:autoroutes/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> login() async {
    String url = 'http://localhost:3000/api/users/signin';
    Map<String, String> headers = {
      'Content-Type': 'application/json; charset=UTF-8',
    };
    Map<String, dynamic> data = {
      'email': "F2020266036@umt.edu.pk",
      'password': "hM9a7@xp",
    };

    final response = await http.post(Uri.parse(url),
        headers: headers, body: jsonEncode(data));
        print(response);
    if (response.statusCode == 308) {
      // Extract the new location from the 'Location' header
      var newLocation = response.headers['location'];

      if (newLocation != null) {
        // Make a new request to the redirected location
        var newResponse = await http.get(Uri.parse(newLocation));
        // Process the response from the new location
        print(newResponse.body);
      }
    }
      if (response.statusCode == 201) {
        // Post created successfully
        print('Post created successfully');
        print('Response body: ${response.body}');
        // You can do further processing here
      } else {
        // Error occurred while creating post
        print('Error creating post. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    }

    @override
    void dispose() {
      emailController.dispose();
      passwordController.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      // Fluttertoast.showToast(msg: "Logged IN");
                      //
                      // AutoRouter.of(context).pushAndPopUntil(
                      //     const DashboardRoute(),
                      //     predicate: (route) => false);

                      login();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Fluttertoast.showToast(msg: "Forgot Password");
                  },
                  child: const Text(
                    "Forget Password!",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const SizedBox(height: 50),
                Column(
                  children: [
                    const Text("or Sign in using: "),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Fluttertoast.showToast(msg: "Log in with google");
                          },
                          icon: const FaIcon(FontAwesomeIcons.google),
                        ),
                        IconButton(
                          onPressed: () {
                            Fluttertoast.showToast(msg: "Log in with facebook");
                          },
                          icon: const FaIcon(FontAwesomeIcons.facebook),
                        ),
                        IconButton(
                          onPressed: () {
                            Fluttertoast.showToast(msg: "Log in with twitter");
                          },
                          icon: const FaIcon(FontAwesomeIcons.twitter),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   PageRouteBuilder(
                        //     transitionDuration: Duration.zero,
                        //     pageBuilder: (context, animation, secondaryAnimation) {
                        //       return Registration();
                        //     },
                        //   ),
                        // );
                        // Navigator.pushReplacementNamed(context, '/register');
                        // Navigator.pushNamed(context, '/register');
                        AutoRouter.of(context).push(const Registration());
                      },
                      child: const Text(
                        "Don't have an account? Register",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    const SizedBox(height: 50),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }
  }
