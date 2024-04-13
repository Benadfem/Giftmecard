import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilities/components.dart';

class RegistrationPage extends StatelessWidget {
  static const routeName = '/registration-page';

  const RegistrationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Registration'),
      ),
      body: const UserRegistrationForm(),
    );
  }
}

//variables
final TextEditingController _firstNameController = TextEditingController();
final TextEditingController _lastNameController = TextEditingController();
final TextEditingController _usernameController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final TextEditingController _referercodeController = TextEditingController();
final TextEditingController _phoneController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _messageController = TextEditingController();

final formKey = GlobalKey<FormState>();

class UserRegistrationForm extends StatefulWidget {
  const UserRegistrationForm({super.key});

  @override
  State<UserRegistrationForm> createState() => _UserRegistrationFormState();
}

class _UserRegistrationFormState extends State<UserRegistrationForm> {
  final _firstNameFocusNode = FocusNode();
  final _lastNameFocusNode = FocusNode();
  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _referalFocusNode = FocusNode();

  @override
  void dispose() {
    _firstNameFocusNode.dispose();
    _lastNameFocusNode.dispose();
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    _emailFocusNode.dispose();
    _referalFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var devicewidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Form(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            //the first name text
            MyTextFormField(
              keyBoardType: TextInputType.name,
              title: 'First Name',
              controller: _firstNameController,
              hintText: 'Enter the First Name',
              hintStyle: GoogleFonts.openSans(fontSize: 10.0),
              validator: (text) {
                if (text.toString().isEmpty) {
                  return 'Please enter your First Name';
                }
                // Regular expression to match only letters (both uppercase and lowercase)
                RegExp regExp = RegExp(r'^[a-zA-Z ]+$');

                if (!regExp.hasMatch(text)) {
                  return 'Please enter a valid name';
                }

                // Optional: Minimum and maximum length validation
                // Adjust the min and max length as needed
                const int minLength = 2;
                const int maxLength = 30;

                if (text.length < minLength || text.length > maxLength) {
                  return 'Name must be between $minLength and $maxLength characters';
                }
              },
              containerWidth: devicewidth / 1.4,
              onSaved: (value) {},
            ),
            const SizedBox(height: 10.0),
            //the last name text
            MyTextFormField(
              keyBoardType: TextInputType.name,
              title: 'Last Name',
              controller: _lastNameController,
              hintText: 'Enter the Last Name',
              hintStyle: GoogleFonts.openSans(fontSize: 10.0),
              validator: (text) {
                if (text.toString().isEmpty) {
                  return 'Please enter your Last Name';
                }
                // Regular expression to match only letters (both uppercase and lowercase)
                RegExp regExp = RegExp(r'^[a-zA-Z ]+$');

                if (!regExp.hasMatch(text)) {
                  return 'Please enter a valid name';
                }

                // Optional: Minimum and maximum length validation
                // Adjust the min and max length as needed
                const int minLength = 2;
                const int maxLength = 30;

                if (text.length < minLength || text.length > maxLength) {
                  return 'Name must be between $minLength and $maxLength characters';
                }
              },
              containerWidth: devicewidth / 1.4,
              onSaved: (value) {},
              focusNode: _firstNameFocusNode,
            ),
            const SizedBox(height: 10.0),
            //username text
            MyTextFormField(
              title: 'Username',
              controller: _usernameController,
              hintText: 'Enter the Username',
              hintStyle: GoogleFonts.openSans(fontSize: 10.0),
              validator: (text) {
                if (text.toString().isEmpty) {
                  return 'Please enter your Last Name';
                }
                // Regular expression to match only letters (both uppercase and lowercase)
                RegExp regExp = RegExp(r'^[a-zA-Z ]+$');

                if (!regExp.hasMatch(text)) {
                  return 'Please enter a valid name';
                }

                // Optional: Minimum and maximum length validation
                // Adjust the min and max length as needed
                const int minLength = 2;
                const int maxLength = 30;

                if (text.length < minLength || text.length > maxLength) {
                  return 'Name must be between $minLength and $maxLength characters';
                }
              },
              containerWidth: devicewidth / 1.4,
              onSaved: (value) {},
              focusNode: _lastNameFocusNode,
            ),
            const SizedBox(height: 10.0),
            //the email text
            MyTextFormField(
              keyBoardType: TextInputType.emailAddress,
              title: 'Email',
              controller: _emailController,
              onSaved: (value) {},
              hintText: 'enter valid email address',
              hintStyle: GoogleFonts.openSans(fontSize: 20.0),
              validator: (value) {
                {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email address';
                  }

                  // Regular expression to match a standard email format
                  RegExp regExp = RegExp(
                    r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
                    caseSensitive: false,
                    multiLine: false,
                  );

                  if (!regExp.hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }

                  // Optional: Additional checks such as domain verification or checking for disposable email addresses
                  // These checks depend on your specific requirements
                }
              },
              containerWidth: devicewidth / 1.4,
              focusNode: _usernameFocusNode,
            ),

            const SizedBox(height: 10.0),
            MyTextFormField(
              keyBoardType: TextInputType.phone,
              title: 'Phone Number',
              controller: _phoneController,
              onSaved: (value) {},
              hintText: 'enter your Phone number',
              hintStyle: GoogleFonts.openSans(fontSize: 20.0),
              validator: (value) {
                // Regular expression for a valid phone number
                String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                RegExp regExp = RegExp(pattern);
                if (value.isEmpty) {
                  return 'Please enter a phone number';
                } else if (!regExp.hasMatch(value)) {
                  return 'Please enter a valid phone number';
                }
              },
              containerWidth: devicewidth / 1.4,
              focusNode: _emailFocusNode,
            ),
            const SizedBox(height: 30.0),

            //password text

            MyTextFormField(
              keyBoardType: TextInputType.none,
              title: 'Phone Number',
              controller: _passwordController,
              onSaved: (value) {},
              hintText: 'enter your password',
              hintStyle: GoogleFonts.openSans(fontSize: 20.0),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Password is required';
                }
                if (value.length < 8) {
                  return 'Password must be at least 8 characters long';
                }
                if (!containsUppercase(value) ||
                    !containsLowercase(value) ||
                    !containsDigit(value) ||
                    !containsSpecialChar(value)) {
                  return 'Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character';
                }
              },
              containerWidth: devicewidth / 1.4,
              focusNode: _emailFocusNode,
            ),
            const SizedBox(height: 30.0),
            SizedBox(
              width: devicewidth,
              child: Button(
                minWidth: 200.0,
                elevation: 5.0,
                splashcolor: Theme.of(context).colorScheme.secondary,
                onPressed: () =>
                    Navigator.of(context).pushNamed('/registration-page'),
                height: 60.0,
                child: const OpenSans(
                  text: 'Create Account',
                  size: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool containsLowercase(String value) {
    return value.contains(RegExp(r'[a-z]'));
  }

  bool containsDigit(String value) {
    return value.contains(RegExp(r'[0-9]'));
  }

  bool containsSpecialChar(String value) {
    return value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  }

  bool containsUppercase(value) {
    return value.contains(RegExp(r'[A-Z]'));
  }
}
