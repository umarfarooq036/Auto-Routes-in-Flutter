import 'package:auto_route/auto_route.dart';
import 'package:autoroutes/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen C"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is the third screen"),
            TextButton(
                onPressed: () {
                  AutoRouter.of(context).push(const RouteA());
                },
                child: const Text("Screen A"))
          ],
        ),
      ),
    );
  }
}
