import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

import 'utilities/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    setPathUrlStrategy();
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBYimVCNVJh-O74rbha7ld5cytuzfukKew",
          authDomain: "giftcard-c6c11.firebaseapp.com",
          projectId: "giftcard-c6c11",
          storageBucket: "giftcard-c6c11.appspot.com",
          messagingSenderId: "362186324320",
          appId: "1:362186324320:web:5fac27ffe5cd77c6388605",
          measurementId: "G-1CP33L4WLV"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      //   textTheme: TextTheme(
      //     displayLarge: const TextStyle(
      //       fontSize: 10,
      //       fontWeight: FontWeight.bold,
      //     ),
      //     titleLarge: GoogleFonts.aBeeZee(
      //       fontSize: 20,
      //       fontStyle: FontStyle.normal,
      //     ),
      //     bodyMedium: GoogleFonts.lato(),
      //     displaySmall: GoogleFonts.pacifico(),
      //   ),
      //   useMaterial3: true,
      // ),
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
