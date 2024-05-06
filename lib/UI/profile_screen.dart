import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 24,horizontal: 24
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    child: Image.asset("assets/doctor2.png"),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Ravi Shah", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                       Text("Patinet", style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.normal))
                    ],
                  ),

                ],
              ),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: const Divider()),
              const Text("Settings", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: const Divider()),
              const Text("Notification", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: const Divider()),



            ],
          ),
        ),
      ),
    );
  }
}
