import 'package:auto_route/auto_route.dart';
import 'package:autoroutes/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'LoginPage.dart';

@RoutePage()
class Registration extends StatelessWidget {
  // final VoidCallback toggleLogin;

  const Registration({Key? key}) : super(key: key);

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
                "Registration",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                ),
              ),
              const SizedBox(height: 20),
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
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(msg: "Registered Successfully");
                  // You can add registration logic here
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
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                // onPressed:toggleLogin,
                onPressed: () {
                  // Navigator.pushReplacement(context, PageRouteBuilder(transitionDuration: Duration.zero , pageBuilder: (context, animation , secondaryAnimation){
                  // Navigator.pushNamed(context, '/login');
                  // return Login();
                  AutoRouter.of(context).pushAndPopUntil(LoginRoute(),
                      predicate: (route) => false);
                },
                child: const Text(
                  "Already have an account? Login",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              const SizedBox(height: 50),
              const Text("or Sign up using: "),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Fluttertoast.showToast(msg: "Sign up with google");
                    },
                    icon: const FaIcon(FontAwesomeIcons.google),
                  ),
                  IconButton(
                    onPressed: () {
                      Fluttertoast.showToast(msg: "Sign up with facebook");
                    },
                    icon: const FaIcon(FontAwesomeIcons.facebook),
                  ),
                  IconButton(
                    onPressed: () {
                      Fluttertoast.showToast(msg: "Sign up with twitter");
                    },
                    icon: const FaIcon(FontAwesomeIcons.twitter),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
