import 'package:flutter/material.dart';
import 'package:medical_health_careapp_ui/components/app_font.dart';
import 'package:medical_health_careapp_ui/constants/image_path.dart';
import 'package:medical_health_careapp_ui/themes/app_color.dart';
import 'package:medical_health_careapp_ui/themes/app_padding.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  final List _images = [
    ImagePath.doctor1,
    ImagePath.doctor2,
    ImagePath.doctor3,
    ImagePath.doctor4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColors,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                          ImagePath.doctor1,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const AppText(
                        text: "Dr. Doctor Name",
                        color: Colors.white,
                        size: 23,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(height: 5),
                      const AppText(
                        text: "Therapist",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.call,
                              color: AppColors.primaryColors,
                              size: 25,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.chat_bubble,
                              color: AppColors.primaryColors,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: double.infinity,
              padding: const EdgeInsets.only(top: 20, left: 15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const AppText(
                    text: "About Doctor",
                    color: Colors.black54,
                    size: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(height: 10),
                  const AppText(
                    text:
                        "Lorem Ipsum is simply dummy text of the printing and typeset",
                    color: Colors.black54,
                    size: 16,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const AppText(
                        text: "Review",
                        color: Colors.black54,
                        size: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      const AppText(
                        text: "4.9",
                        color: Colors.black54,
                        size: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(width: 10),
                      const AppText(
                        text: "(124)",
                        color: AppColors.primaryColors,
                        size: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const AppText(
                          text: "See all",
                          color: AppColors.primaryColors,
                          size: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 170,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: AppPadding.appRadius,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                spreadRadius: 2,
                                color: Colors.black12,
                              )
                            ],
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(_images[index]),
                                  ),
                                  title: const AppText(
                                    text: "Dr. Doctor Name",
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  subtitle: const Text("1 day ago"),
                                  trailing: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      AppText(
                                        text: "4.9",
                                        color: Colors.black54,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "Many thanks to Dr. Dear. He is a great and Professional doctor to our Country",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  const AppText(
                    text: "Location",
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    size: 18,
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColors,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.location_on,
                        color: Colors.white,
                        size: 33,
                      ),
                    ),
                    title: const AppText(
                      text: "New york, Medical care",
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                    subtitle: const AppText(
                        text: "address line of the medical center",
                        color: Colors.black54),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        height: 170,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 4,
              color: Colors.black12,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppText(
                  text: "Consultation price",
                  color: Colors.black54,
                ),
                AppText(
                  text: "\$100",
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: AppColors.primaryColors,
                  borderRadius: AppPadding.appRadius,
                ),
                child: const Center(
                  child: AppText(
                    text: "Book Appointment",
                    color: Colors.white,
                    size: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
