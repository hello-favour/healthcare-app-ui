import 'package:flutter/material.dart';
import 'package:medical_health_careapp_ui/components/app_font.dart';
import 'package:medical_health_careapp_ui/components/upcoming_schedule.dart';
import 'package:medical_health_careapp_ui/themes/app_color.dart';
import 'package:medical_health_careapp_ui/themes/app_padding.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex = 0;
  final _scheduleWidgets = [
    const UpcomingSchedule(),
    const Center(
      child: AppText(
        text: "Completed",
        color: AppColors.appBlack,
      ),
    ),
    const Center(
      child: AppText(
        text: "Canceled",
        color: AppColors.appBlack,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: AppText(
                text: "Schedule",
                color: AppColors.appBlack,
                size: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFF4F6FA),
                borderRadius: ElementSpacing.appRadius,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 15),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 0
                            ? AppColors.primaryColors
                            : Colors.transparent,
                        borderRadius: ElementSpacing.appRadius,
                      ),
                      child: const AppText(
                        text: "Upcoming",
                        color: AppColors.appBlack,
                        size: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 15),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 1
                            ? AppColors.primaryColors
                            : Colors.transparent,
                        borderRadius: ElementSpacing.appRadius,
                      ),
                      child: const AppText(
                        text: "Completed",
                        color: AppColors.appBlack,
                        size: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 15),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 2
                            ? AppColors.primaryColors
                            : Colors.transparent,
                        borderRadius: ElementSpacing.appRadius,
                      ),
                      child: const AppText(
                        text: "Canceled",
                        color: AppColors.appBlack,
                        size: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            _scheduleWidgets[_buttonIndex],
          ],
        ),
      ),
    );
  }
}
