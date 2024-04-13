import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final onPressed;
  final child;
  final color;
  final shape;
  final splashcolor;
  final height;
  final elevation;
  final minWidth;

  const Button({
    super.key,
    required this.onPressed,
    required this.child,
    this.color,
    this.shape,
    this.splashcolor,
    required this.height,
    required this.elevation,
    required this.minWidth,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: minWidth,
      onPressed: onPressed,
      height: height,
      child: child,
      elevation: elevation ?? 20.0,
      color: color ?? Theme.of(context).colorScheme.secondary,
      shape: shape ??
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
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

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.title,
    required this.controller,
    required this.onSaved,
    this.keyBoardType,
    required this.hintText,
    required this.hintStyle,
    required this.validator,
    required this.containerWidth,
    this.focusNode,
  });

  final String title;
  final TextEditingController controller;
  final hintText;
  final hintStyle;
  final onSaved;
  final keyBoardType;
  final validator;
  final containerWidth;
  final focusNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: containerWidth,
      child: TextFormField(
        validator: validator,
        keyboardType: keyBoardType ?? keyBoardType,
        textAlign: TextAlign.start,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.secondary),
            borderRadius: const BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.secondary),
            borderRadius: const BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
          hintText: hintText,
          hintStyle: hintStyle,
        ),
        focusNode: focusNode,
        onSaved: onSaved,
      ),
    );
  }
}
