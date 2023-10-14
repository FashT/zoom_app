import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zoom_app/resources/auth_page.dart';
import 'package:zoom_app/widgets.dart/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
//  final AuthMethod _authMethod = AuthMethod();

Future <void> handleGoogleSignIn() async {

//   sign in with Google.
 final GoogleSignInAccount?
googleSignInAccount = await GoogleSignIn().signIn();

if (googleSignInAccount!= null) {
  Navigator.pushNamed(context, '/home-screen');
}

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Start or join a meeting',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 38),
            child: Image.asset(
              'assets/images/onboarding.jpg',
              fit: BoxFit.cover,
            ),
          ),
          CustomButton(
              text: 'Sign in',
              // onPressed: () async {
              //   bool res = await _authMethod.signInWithGoogle(context);
              //   if (!mounted) return;
              //   if (res) {
              //     Navigator.pushNamed(context,'/home-screen');
              //   }
              // }
              onPressed: handleGoogleSignIn,
              ),
        ],
      ),
    );
  }
}
