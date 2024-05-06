import 'package:flutter/material.dart';

class NearDoctorView extends StatelessWidget {
  const NearDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.11), offset: const Offset(0, 3), spreadRadius: 5, blurRadius: 20)],
        color: Colors.white.withOpacity(0.9),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: const Color(0xffe0dbdb),
                child: Image.asset('assets/doctor_person.png'),
              ),
              const SizedBox(width: 12),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dr. Joseph", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("Dental", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400)),
                ],
              ),
              const Spacer(),
              const Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey,
                  ),
                  Text("1.2 KM", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400)),
                ],
              )
            ],
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: const Divider(
                color: Colors.grey,
              )),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.access_time, color: Colors.orange, size: 20),
                  SizedBox(width: 8),
                  Text(
                    '4,8 (120 Reviews)',
                    style: TextStyle(color: Colors.orange, fontWeight: FontWeight.normal, fontSize: 12),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.access_time, color: Colors.green, size: 20),
                  SizedBox(width: 8),
                  Text(
                    'Open at 17.00',
                    style: TextStyle(color: Colors.green, fontWeight: FontWeight.normal, fontSize: 12),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
