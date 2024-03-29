import 'package:auto_route/auto_route.dart';
import 'package:autoroutes/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'LoginPage.dart';
import 'Register.dart';

@RoutePage()
class LottieAnimation extends HookWidget {
  const LottieAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController();

    return Scaffold(
      body: Lottie.network(
        'https://lottie.host/63d2b05a-3f52-45f4-98fe-527ee66e7283/b86kVDrnmL.json',
        width: double.infinity,
        height: double.infinity,
        controller: animationController,
        onLoaded: (composition) {
          animationController
            ..duration = composition.duration
            ..forward();
          animationController.addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const Login(),
              //   ),
              // );
              // Navigator.pushNamed(context, '/login');

              AutoRouter.of(context).pushAndPopUntil(const LoginRoute(),
                  predicate: (route) => false);
            }
          });
        },
        fit: BoxFit.fill,
      ),
    );
  }
}
