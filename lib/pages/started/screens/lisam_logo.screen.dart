import 'package:flutter/material.dart';

class LisamLogoScreen extends StatelessWidget {
  const LisamLogoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Bienvenido a LISAM',
            style: TextStyle(
                color: Colors.white70,
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Image.asset(
            'assets/logos/LISAM_blanco.png',
            height: 400,
          )
        ],
      ),
    );
  }
}
