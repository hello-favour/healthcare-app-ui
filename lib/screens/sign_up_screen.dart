import 'package:flutter/material.dart';
import 'package:medical_health_careapp_ui/components/app_font.dart';
import 'package:medical_health_careapp_ui/constants/image_path.dart';
import 'package:medical_health_careapp_ui/screens/sign_in_screen.dart';
import 'package:medical_health_careapp_ui/themes/app_color.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Image.asset(ImagePath.doctor),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Full Name"),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Email Address"),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Phone Number"),
                    prefixIcon: Icon(Icons.call),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: TextField(
                  obscureText: passToggle ? true : false,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    label: const Text("Email Password"),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        if (passToggle == true) {
                          passToggle = false;
                        } else {
                          passToggle = true;
                        }
                        setState(() {});
                      },
                      icon: passToggle
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: SizedBox(
                  width: double.infinity,
                  child: Material(
                    color: AppColors.primaryColors,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Center(
                          child: AppText(
                            text: "Create Account",
                            size: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppText(
                    text: "Already have Account?",
                    size: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SignInScreen();
                      }));
                    },
                    child: const AppText(
                      text: "Log In",
                      size: 18,
                      color: AppColors.primaryColors,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
