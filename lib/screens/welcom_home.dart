import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medical_health_careapp_ui/components/app_font.dart';
import 'package:medical_health_careapp_ui/constants/image_path.dart';
import 'package:medical_health_careapp_ui/themes/app_color.dart';

class WelcomeHome extends StatelessWidget {
  const WelcomeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const AppText(
                  text: "SKIP",
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(ImagePath.doctor),
            ),
            const SizedBox(height: 50),
            const AppText(
              text: "Doctors Appointment",
              size: 35,
              color: AppColors.primaryColors,
              letterSpacing: 1,
              wordSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 10),
            const AppText(
              text: "Appointment Your Doctor",
              size: 18,
              color: Colors.black,
              letterSpacing: 1,
              wordSpacing: 2,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: AppColors.primaryColors,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: AppText(
                        text: "Login In",
                        size: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Material(
                  color: AppColors.primaryColors,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                      child: AppText(
                        text: "Login Out",
                        size: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
