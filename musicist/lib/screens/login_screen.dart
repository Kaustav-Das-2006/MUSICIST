import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF2DEE7F);
    const backgroundColor = Color(0xFF121212);
    const textFieldColor = Color(0xFF1E1E1E);
    const textColor = Colors.white;
    const subtextColor = Colors.white;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          // FIX: The SingleChildScrollView and ConstrainedBox have been removed.
          // The Column is now the direct child of the Padding.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),

              // -- Logo and Slogan --
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'MuSiCiSt',
                    style: GoogleFonts.poppins(
                      color: textColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                      width: 18,
                      height: 18,
                      decoration: const BoxDecoration(
                          color: primaryColor, shape: BoxShape.circle)),
                  const SizedBox(width: 4),
                  Container(
                      width: 24,
                      height: 24,
                      decoration: const BoxDecoration(
                          color: primaryColor, shape: BoxShape.circle)),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                'Just keep on vibin\'',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(color: subtextColor, fontSize: 16),
              ),
              const SizedBox(height: 60),

              // -- Input Fields --
              TextField(
                style: GoogleFonts.poppins(color: textColor),
                decoration: InputDecoration(
                  labelText: 'Enter Email',
                  labelStyle: GoogleFonts.poppins(color: subtextColor),
                  filled: true,
                  fillColor: textFieldColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: true,
                style: GoogleFonts.poppins(color: textColor),
                decoration: InputDecoration(
                  labelText: 'Enter Password',
                  labelStyle: GoogleFonts.poppins(color: subtextColor),
                  filled: true,
                  fillColor: textFieldColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(height: 40),

              // -- Login Buttons --
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
                child: Text('Log in',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.phone_android),
                label: Text('Continue with Phone Number',
                    style: GoogleFonts.poppins()),
                style: OutlinedButton.styleFrom(
                  foregroundColor: textColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  side: const BorderSide(color: subtextColor),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
              ),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: () {},
                // Make sure your assets are set up correctly for this to work
                icon: Image.asset(
                  "assets/images/google_logo.png",
                  height: 20,
                ),
                label:
                    Text('Continue with Google', style: GoogleFonts.poppins()),
                style: OutlinedButton.styleFrom(
                  foregroundColor: textColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  side: const BorderSide(color: subtextColor),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
              ),
              const Spacer(),

              // -- Sign Up Text --
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account ? ',
                      style: GoogleFonts.poppins(color: subtextColor)),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                          color: textColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
