import 'package:flutter/material.dart';
import 'package:medical_health_careapp_ui/components/app_font.dart';
import 'package:medical_health_careapp_ui/components/chat_sample.dart';
import 'package:medical_health_careapp_ui/constants/image_path.dart';
import 'package:medical_health_careapp_ui/themes/app_color.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          centerTitle: true,
          leadingWidth: 30,
          backgroundColor: AppColors.primaryColors,
          title: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Center(
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage(ImagePath.doctor),
                    radius: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: AppText(
                      text: "Dr. Doctor Name",
                      color: AppColors.appWhite,
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 15, right: 15),
              child: Icon(
                Icons.call,
                color: AppColors.appWhite,
                size: 26,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, right: 10),
              child: Icon(
                Icons.video_call,
                color: AppColors.appWhite,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, right: 10),
              child: Icon(
                Icons.more_vert,
                color: AppColors.appWhite,
                size: 26,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 15,
        padding:
            const EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 80),
        itemBuilder: (context, index) {
          return const ChatSample();
        },
      ),
      bottomSheet: Container(
        height: 65,
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
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.emoji_emotions,
                size: 30,
                color: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 1.6,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Type something",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send,
                color: AppColors.primaryColors,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
