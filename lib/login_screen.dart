// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    // Implement your login logic here
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (data.name != 'test' || data.password != '12345') {
        return 'Username or password is incorrect';
      }
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) {
    // Implement your signup logic here
    print('Signup Name: ${data.name}, Signup Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) {
    // Implement your password recovery logic here
    print('Recover Password for Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (name != 'test') {
        return 'Username not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Wannaplayfoot',
      onLogin: _authUser,
      onSignup: _signupUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) =>
              const HomeScreen(), // Ensure you have a HomeScreen to navigate to
        ));
      },
      onRecoverPassword: _recoverPassword,
      messages: LoginMessages(
        userHint: 'Username',
        passwordHint: 'Password',
        confirmPasswordHint: 'Confirm',
        loginButton: 'LOG IN',
        signupButton: 'REGISTER',
        forgotPasswordButton: 'Forgot?',
        recoverPasswordButton: 'HELP ME',
        goBackButton: 'BACK',
        confirmPasswordError: 'Not match!',
        recoverPasswordIntro: 'Don\'t feel bad. Happens all the time.',
        recoverPasswordDescription:
            'We will send you instructions on how to reset your password.',
        recoverPasswordSuccess: 'Password rescued successfully',
      ),
      theme: LoginTheme(
        primaryColor: Colors.blueAccent,
        accentColor: Colors.orange,
        errorColor: Colors.red,
      ),
      additionalSignupFields: const [
        UserFormField(
          keyName: 'name',
          icon: Icon(Icons.person),
          displayName: 'Name',
        ),
      ],
      userType: LoginUserType.name,
      loginProviders: <LoginProvider>[
        LoginProvider(
          icon: FontAwesomeIcons.google,
          label: 'Google',
          callback: () async {
            return null;

            // Handle Google login
          },
        ),
        LoginProvider(
          icon: FontAwesomeIcons.facebook,
          label: 'Facebook',
          callback: () async {
            return null;

            // Handle Facebook login
          },
        ),
        LoginProvider(
          icon: FontAwesomeIcons.instagram,
          label: 'Instagram',
          callback: () async {
            return null;

            // Handle Instagram login
          },
        ),
        LoginProvider(
          icon: FontAwesomeIcons.tiktok,
          label: 'TikTok',
          callback: () async {
            return null;

            // Handle TikTok login
          },
        ),
      ],
    );
  }
}
