import 'package:flutter/material.dart';

import '../components.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double devicewidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSizedBox(deviceHeight / 9.9),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: Image.asset(
                  'assets/behance.jpg',
                  // height: 200.0,
                  // width: devicewidth / 0.5,
                  fit: BoxFit.contain,
                ),
              ),
              verticalSizedBox(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Button(
                    splashcolor: Theme.of(context).colorScheme.secondary,
                    onPressed: () {},
                    width: double.infinity,
                    child: const OpenSans(
                      text: 'Create Account',
                      size: 20.0,
                    ),
                  ),
                  verticalSizedBox(20.0),
                  Button(
                      splashcolor: Theme.of(context).colorScheme.secondary,
                      onPressed: () {},
                      width: double.infinity,
                      child: const OpenSans(
                        text: 'Login',
                        size: 20.0,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
