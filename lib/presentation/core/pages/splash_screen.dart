import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff00B4CC),
        child: const Center(
          child: Text(
            'AdVista',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// 3C:B2:2F:3B:C9:20:CD:80:72:B4:4F:DE:CB:DC:5D:F6:B2:FB:87:A7
