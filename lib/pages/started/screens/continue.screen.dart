import 'package:flutter/material.dart';
import 'package:lisam_app/config/routes.dart';
import 'package:lisam_app/constans/colors.dart';
import 'package:lisam_app/core/services/user_preferences.service.dart';

class ContinueScreen extends StatelessWidget {
  const ContinueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          const Text(
            'Powered by',
            style: TextStyle(
              color: Colors.white70,
              // fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/SIAFI_logo.png',
          ),
          const SizedBox(height: 30),
          const Spacer(),
          Center(
            child: ElevatedButton(
              onPressed: () => goToCaptureSign(context),
              style: ElevatedButton.styleFrom(
                primary: accentColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
              ),
              child: const Text('Continuar'),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  void goToCaptureSign(BuildContext context) {
    UserPreferencesService.showStartedPage = false;
    Navigator.pushNamedAndRemoveUntil(
        context, Routes.captureSign, (route) => false);
  }
}
