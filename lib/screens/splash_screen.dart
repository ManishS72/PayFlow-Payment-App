import 'package:flutter/material.dart';
import 'package:payflow/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF080D2B), Color(0xFF0B1035), Color(0xFF080B26)],
          ),
        ),

        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: -120,
              child: Container(
                width: 320,
                height: 320,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Color(0xFF4935C8),
                      Color(0xFF302080),
                      Color(0x000B1035),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: -120,
              right: -100,
              child: Container(
                width: 320,
                height: 320,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Color(0xFF3730A3),
                      Color(0xFF24205F),
                      Color(0x000B1035),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 25,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  "v1.0.0",
                  style: TextStyle(color: Color(0xFF777DAA), fontSize: 15),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_balance_wallet_rounded,
                    size: 80,
                    color: Color(0xFFA78BFA),
                  ),

                  const SizedBox(height: 10),

                  RichText(
                    text: TextSpan(
                      text: "Pay",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: "Flow",
                          style: TextStyle(
                            color: Color(0xFFA78BFA),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    "Payments made Simple.",
                    style: TextStyle(color: Color(0xFFB4B9DC)),
                  ),

                  const SizedBox(height: 40),

                  CircularProgressIndicator(
                    color: Color(0xFFA78BFA),
                    strokeWidth: 4,
                  ),

                  const SizedBox(height: 10),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Text("Get Started"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
