import 'package:appoinment_app/UI/Widgets/green_box.dart';
import 'package:appoinment_app/UI/Widgets/near_doctor_view.dart';
import 'package:appoinment_app/UI/Widgets/rounded_box_list.dart';
import 'package:appoinment_app/UI/Widgets/search_textfield.dart';
import 'package:appoinment_app/UI/main_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Hello,", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400)),
                        Text("Hi James,", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold))
                      ],
                    ),
                    InkWell(
                       onTap: () {
                         Get.put(MainScreenController()).animateToPage(3);
                       },
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.withOpacity(0.4),
                        child: Image.asset('assets/doctor2.png'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                const GreenBox(),
                const SizedBox(height: 20),
                const SearchTextField(),
                const SizedBox(height: 24),
                const RoundedBoxList(),
                const SizedBox(height: 32),
                const Text("Near Doctor", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 36),
                const NearDoctorView()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
