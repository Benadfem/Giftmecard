import 'package:flutter/material.dart';

import '../utilities/components.dart';

class MyHomePage extends StatelessWidget {
  static const routeName = '/';
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2),
                  borderRadius: BorderRadius.circular(
                      10.0), // Adjust border radius as needed
                ),
                height: 350,
                width: double.infinity,
                child: Image.asset(
                  'assets/behance.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              verticalSizedBox(20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.0,
                    width: double.infinity,
                    child: Button(
                      elevation: 50.0,
                      splashcolor: Theme.of(context).colorScheme.secondary,
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/registration-page'),
                      height: 60.0,
                      minWidth: 200.0,
                      child: const OpenSans(
                        text: 'Create Account',
                        size: 20.0,
                      ),
                    ),
                  ),
                  verticalSizedBox(20.0),
                  SizedBox(
                    height: 50.0,
                    width: double.infinity,
                    child: Button(
                        elevation: 50.0,
                        splashcolor: Theme.of(context).colorScheme.secondary,
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/login-page'),
                        height: 60.0,
                        minWidth: 200.0,
                        child: const OpenSans(
                          text: 'Login',
                          size: 20.0,
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
