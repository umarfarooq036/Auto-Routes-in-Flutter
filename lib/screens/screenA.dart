import 'package:auto_route/auto_route.dart';
import 'package:autoroutes/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen A"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is the first screen"),
            TextButton(
                onPressed: () {
                  AutoRouter.of(context).push(const RouteB());
                },
                child: const Text("Screen B"))
          ],
        ),
      ),
    );
  }
}
