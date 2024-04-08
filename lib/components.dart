import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final onPressed;
  final child;
  final color;
  final shape;
  final splashcolor;
  final width;
  final height;

  const Button({
    super.key,
    required this.onPressed,
    required this.child,
    this.color,
    this.shape,
    this.splashcolor,
    required this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: height ?? 20.0,
      minWidth: width ?? 20.0,
      child: child,
      color: color ?? Theme.of(context).colorScheme.secondary,
      shape: shape ??
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      splashColor: splashcolor,
    );
  }
}

class OpenSans extends StatelessWidget {
  final text;
  final size;
  final color;
  final fontWeight;
  const OpenSans(
      {super.key, this.text, this.size, this.color, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: GoogleFonts.openSans(
        fontSize: size,
        color: color ?? Colors.white,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}

Widget verticalSizedBox(double height) {
  return SizedBox(
    height: height,
  );
}

Widget horizontalSizedBoc(double width) {
  return SizedBox(
    width: width,
  );
}
