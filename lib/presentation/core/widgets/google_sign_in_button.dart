import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  final Function()? onPressed;
  const GoogleSignInButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Image.asset(
        'assets/icons/google.png',
        height: 24,
        width: 24,
      ),
      label: const Text(
        'Sign In with Google',
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
