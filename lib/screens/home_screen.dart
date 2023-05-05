import 'package:flutter/material.dart';
import 'package:medical_health_careapp_ui/components/app_font.dart';
import 'package:medical_health_careapp_ui/constants/image_path.dart';
import 'package:medical_health_careapp_ui/screens/appointment_screen.dart';
import 'package:medical_health_careapp_ui/themes/app_color.dart';
import 'package:medical_health_careapp_ui/themes/app_padding.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List _symptoms = [
    "Temperature",
    "snuffle",
    "fever",
    "cough",
    "cold",
  ];

  final List _images = [
    ImagePath.doctor1,
    ImagePath.doctor2,
    ImagePath.doctor3,
    ImagePath.doctor4,
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppText(
                  text: "Hello Alex",
                  size: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(ImagePath.doctor3),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColors,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: AppColors.primaryColors,
                          size: 35,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const AppText(
                        text: "Clinic Visit",
                        size: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(height: 5),
                      const AppText(
                        text: "Make an appointment",
                        color: Colors.white54,
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: AppPadding.appRadius,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        spreadRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryColors,
                        ),
                        child: const Icon(
                          Icons.home_filled,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const AppText(
                        text: "Home Visit",
                        size: 18,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(height: 5),
                      const AppText(
                        text: "Call the doctor home",
                        color: Colors.black45,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: AppText(
              text: "What are your symptoms?",
              color: Colors.black54,
              fontWeight: FontWeight.w500,
              size: 23,
            ),
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: _symptoms.length,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: AppPadding.appRadius,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 1,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Center(
                    child: AppText(
                      text: _symptoms[index],
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      size: 16,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: AppText(
              text: "Popular Doctors",
              color: Colors.black54,
              fontWeight: FontWeight.w500,
              size: 23,
            ),
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AppointmentScreen();
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: AppPadding.appRadius,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(_images[index]),
                      ),
                      const AppText(
                        text: "Dr. Doctor Name",
                        color: Colors.black54,
                        size: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      const AppText(
                        text: "Therapist",
                        color: Colors.black54,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          AppText(
                            text: "4.9",
                            color: Colors.black45,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
