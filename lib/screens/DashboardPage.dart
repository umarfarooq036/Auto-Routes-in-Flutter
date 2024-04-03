import 'package:auto_route/auto_route.dart';
import 'package:autoroutes/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body:  Center(
        child: Column(
          children: [
            const Text("This is your Dashboard"),
            IconButton(
              onPressed: () {
                AutoRouter.of(context).pushAndPopUntil(const LoginRoute(),
                    predicate: (route) => false);
              },
              icon: Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}
