import 'package:flutter/material.dart';

class ScheduledDoctorView extends StatelessWidget {
  const ScheduledDoctorView({super.key, required this.image, required this.date, required this.time, required this.name, required this.speciality});
  final String image;
  final String date;
  final String time;
  final String name;
  final String speciality;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.11), offset: const Offset(0, 3), spreadRadius: 2, blurRadius: 10)],
        color: Colors.white.withOpacity(0.9),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: const Color(0xffe0dbdb),
                    child: Image.asset(image),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                      Text(speciality, style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400)),
                    ],
                  ),
                ],
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  child: const Divider(
                    color: Colors.grey,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_month_sharp, color: Colors.grey, size: 20),
                      SizedBox(width: 8),
                      Text(
                        date,
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 12),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time, color: Colors.grey, size: 20),
                      SizedBox(width: 8),
                      Text(
                        time,
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.grey.withOpacity(0.15), borderRadius: BorderRadius.circular(12)),
                  child: const Text(
                    "Detail",
                    style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500, fontSize: 14),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
