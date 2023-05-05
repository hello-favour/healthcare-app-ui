import 'package:flutter/material.dart';
import 'package:medical_health_careapp_ui/components/app_font.dart';
import 'package:medical_health_careapp_ui/constants/image_path.dart';
import 'package:medical_health_careapp_ui/themes/app_color.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppText(
              text: "Settings",
              size: 30,
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(height: 30),
            const ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(ImagePath.doctor2),
              ),
              title: AppText(
                text: "Dr. Doctor Name",
                size: 25,
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
              subtitle: AppText(
                text: "Profile",
                color: Colors.black54,
              ),
            ),
            const Divider(height: 50),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: AppColors.primaryColors,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.person,
                  color: AppColors.appWhite,
                  size: 35,
                ),
              ),
              title: const AppText(
                text: "Profile",
                color: AppColors.appBlack,
                size: 20,
                fontWeight: FontWeight.w500,
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const SizedBox(height: 20),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: AppColors.primaryColors,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.notifications_none_outlined,
                  color: AppColors.appWhite,
                  size: 35,
                ),
              ),
              title: const AppText(
                text: "Notifications",
                color: AppColors.appBlack,
                size: 20,
                fontWeight: FontWeight.w500,
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const SizedBox(height: 20),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: AppColors.primaryColors,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.privacy_tip_outlined,
                  color: AppColors.appWhite,
                  size: 35,
                ),
              ),
              title: const AppText(
                text: "Privacy",
                color: AppColors.appBlack,
                size: 20,
                fontWeight: FontWeight.w500,
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const SizedBox(height: 20),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: AppColors.primaryColors,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.settings_suggest_outlined,
                  color: Colors.green,
                  size: 35,
                ),
              ),
              title: const AppText(
                text: "General",
                color: AppColors.appBlack,
                size: 20,
                fontWeight: FontWeight.w500,
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const SizedBox(height: 20),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: AppColors.primaryColors,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.orange,
                  size: 35,
                ),
              ),
              title: const AppText(
                text: "About Us",
                color: AppColors.appBlack,
                size: 20,
                fontWeight: FontWeight.w500,
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const Divider(height: 40),
            ListTile(
              onTap: () {},
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: AppColors.primaryColors,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.logout,
                  color: Colors.redAccent,
                  size: 35,
                ),
              ),
              title: const AppText(
                text: "Log Out",
                color: AppColors.appBlack,
                size: 20,
                fontWeight: FontWeight.w500,
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
