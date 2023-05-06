import 'package:flutter/material.dart';
import 'package:medical_health_careapp_ui/components/app_font.dart';
import 'package:medical_health_careapp_ui/constants/image_path.dart';
import 'package:medical_health_careapp_ui/themes/app_color.dart';
import 'package:medical_health_careapp_ui/themes/app_padding.dart';

class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppText(
            text: "About Doctor",
            color: AppColors.appBlack,
            size: 18,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(height: 15),
          Container(
            decoration: const BoxDecoration(
              color: AppColors.appWhite,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 2,
                  color: Colors.black12,
                ),
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: AppText(
                      text: "Dr. Doctor Name",
                      color: AppColors.appBlack,
                      fontWeight: FontWeight.bold,
                    ),
                    subtitle: AppText(
                      text: "Therapist",
                      color: AppColors.appBlack,
                    ),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(ImagePath.doctor4),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 40,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            color: AppColors.appBlack,
                          ),
                          SizedBox(width: 5),
                          AppText(
                            text: "7/05/2023",
                            color: AppColors.appBlack,
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.access_time_filled,
                            color: AppColors.appBlack,
                          ),
                          SizedBox(width: 5),
                          AppText(
                            text: "07:07 AM",
                            color: AppColors.appBlack,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const AppText(
                            text: "Confirmed",
                            color: AppColors.appBlack,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF4F6FA),
                            borderRadius: ElementSpacing.appRadius,
                          ),
                          child: const Center(
                            child: AppText(
                              text: "Cancel",
                              color: AppColors.appBlack,
                              size: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColors,
                            //const Color(0xFFF4F6FA),
                            borderRadius: ElementSpacing.appRadius,
                          ),
                          child: const Center(
                            child: AppText(
                              text: "Reschedule",
                              color: AppColors.appBlack,
                              size: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const AppText(
            text: "About Doctor",
            color: AppColors.appBlack,
            size: 18,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(height: 15),
          Container(
            decoration: const BoxDecoration(
              color: AppColors.appWhite,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 2,
                  color: Colors.black12,
                ),
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: AppText(
                      text: "Dr. Doctor Name",
                      color: AppColors.appBlack,
                      fontWeight: FontWeight.bold,
                    ),
                    subtitle: AppText(
                      text: "Therapist",
                      color: AppColors.appBlack,
                    ),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(ImagePath.doctor4),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 40,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            color: AppColors.appBlack,
                          ),
                          SizedBox(width: 5),
                          AppText(
                            text: "7/05/2023",
                            color: AppColors.appBlack,
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.access_time_filled,
                            color: AppColors.appBlack,
                          ),
                          SizedBox(width: 5),
                          AppText(
                            text: "07:07 AM",
                            color: AppColors.appBlack,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const AppText(
                            text: "Confirmed",
                            color: AppColors.appBlack,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF4F6FA),
                            borderRadius: ElementSpacing.appRadius,
                          ),
                          child: const Center(
                            child: AppText(
                              text: "Cancel",
                              color: AppColors.appBlack,
                              size: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColors,
                            //const Color(0xFFF4F6FA),
                            borderRadius: ElementSpacing.appRadius,
                          ),
                          child: const Center(
                            child: AppText(
                              text: "Reschedule",
                              color: AppColors.appBlack,
                              size: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const AppText(
            text: "About Doctor",
            color: AppColors.appBlack,
            size: 18,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(height: 15),
          Container(
            decoration: const BoxDecoration(
              color: AppColors.appWhite,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 2,
                  color: Colors.black12,
                ),
              ],
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: AppText(
                      text: "Dr. Doctor Name",
                      color: AppColors.appBlack,
                      fontWeight: FontWeight.bold,
                    ),
                    subtitle: AppText(
                      text: "Therapist",
                      color: AppColors.appBlack,
                    ),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(ImagePath.doctor4),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 40,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            color: AppColors.appBlack,
                          ),
                          SizedBox(width: 5),
                          AppText(
                            text: "7/05/2023",
                            color: AppColors.appBlack,
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.access_time_filled,
                            color: AppColors.appBlack,
                          ),
                          SizedBox(width: 5),
                          AppText(
                            text: "07:07 AM",
                            color: AppColors.appBlack,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const AppText(
                            text: "Confirmed",
                            color: AppColors.appBlack,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF4F6FA),
                            borderRadius: ElementSpacing.appRadius,
                          ),
                          child: const Center(
                            child: AppText(
                              text: "Cancel",
                              color: AppColors.appBlack,
                              size: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColors,
                            //const Color(0xFFF4F6FA),
                            borderRadius: ElementSpacing.appRadius,
                          ),
                          child: const Center(
                            child: AppText(
                              text: "Reschedule",
                              color: AppColors.appBlack,
                              size: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
