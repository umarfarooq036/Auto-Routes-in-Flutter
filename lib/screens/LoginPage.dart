import 'package:auto_route/auto_route.dart';
import 'package:autoroutes/main.dart';
import 'package:autoroutes/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
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
                    Fluttertoast.showToast(msg: "Logged IN");

                    AutoRouter.of(context).pushAndPopUntil(
                        const DashboardRoute(),
                        predicate: (route) => false);
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
