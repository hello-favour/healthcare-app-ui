import 'package:flutter/material.dart';
import 'package:medical_health_careapp_ui/components/app_font.dart';
import 'package:medical_health_careapp_ui/constants/image_path.dart';
import 'package:medical_health_careapp_ui/themes/app_color.dart';
import 'package:medical_health_careapp_ui/themes/app_padding.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});

  final List _images = [
    ImagePath.doctor1,
    ImagePath.doctor2,
    ImagePath.doctor3,
    ImagePath.doctor4,
    ImagePath.doctor1,
    ImagePath.doctor2,
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: AppText(
              text: "Messages",
              color: AppColors.appBlack,
              fontWeight: FontWeight.bold,
              size: 28,
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: ElementSpacing.appRadius,
                color: AppColors.appWhite,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 7,
                    spreadRadius: 1,
                    color: Colors.black12,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.search,
                    color: AppColors.primaryColors,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  width: 65,
                  height: 65,
                  decoration: const BoxDecoration(
                    color: AppColors.appWhite,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8,
                        spreadRadius: 1,
                        color: Colors.black12,
                      )
                    ],
                  ),
                  child: Stack(
                    textDirection: TextDirection.rtl,
                    children: [
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 65,
                            width: 65,
                            child: Image.asset(
                              _images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(4),
                        padding: const EdgeInsets.all(3),
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                          color: AppColors.appWhite,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
