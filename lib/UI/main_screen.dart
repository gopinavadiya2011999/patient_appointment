import 'package:appoinment_app/UI/bottom_navigation_bar.dart';
import 'package:appoinment_app/UI/home_screen.dart';
import 'package:appoinment_app/UI/main_screen_controller.dart';
import 'package:appoinment_app/UI/profile_screen.dart';
import 'package:appoinment_app/UI/schedule_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'chat_screen.dart';

class MainScreen extends GetView<MainScreenController> {
  MainScreen({super.key});
 final MainScreenController mainScreenController = Get.put(MainScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (value) => controller.currentPage.value = value,
        controller: controller.pageController,
        children: const [
          HomeScreenWrapper(),
          ScheduleScreenWrapper(),
          ChatScreenWrapper(),
          MoreScreenWrapper(),
        ],
      ),
      bottomNavigationBar: Obx(
        () => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BottomNavigationBarWidget(
              active: controller.currentPage.value,
              homeTap: () {
                controller.animateToPage(0);
                FocusManager.instance.primaryFocus?.unfocus();
              },
              scheduleTap: () {
                controller.animateToPage(1);
                FocusManager.instance.primaryFocus?.unfocus();
              },
              chatTap: () {
                controller.animateToPage(2);
              },
              profileTap: () {
                controller.animateToPage(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreenWrapper extends StatefulWidget {
  const HomeScreenWrapper({
    super.key,
  });

  @override
  State<HomeScreenWrapper> createState() => _HomeScreenWrapperState();
}

class _HomeScreenWrapperState extends State<HomeScreenWrapper> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const HomeScreen();
  }
}

class ScheduleScreenWrapper extends StatefulWidget {
  const ScheduleScreenWrapper({super.key});

  @override
  State<ScheduleScreenWrapper> createState() => _ScheduleScreenWrapperState();
}

class _ScheduleScreenWrapperState extends State<ScheduleScreenWrapper> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const ScheduleScreen();
  }
}

class ChatScreenWrapper extends StatefulWidget {
  const ChatScreenWrapper({super.key});

  @override
  State<ChatScreenWrapper> createState() => _ChatScreenWrapperState();
}

class _ChatScreenWrapperState extends State<ChatScreenWrapper> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const ChatScreen();
  }
}

class MoreScreenWrapper extends StatefulWidget {
  const MoreScreenWrapper({super.key});

  @override
  State<MoreScreenWrapper> createState() => _MoreScreenWrapperState();
}

class _MoreScreenWrapperState extends State<MoreScreenWrapper> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ProfileScreen();
  }
}
