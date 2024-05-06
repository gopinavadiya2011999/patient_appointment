import 'package:appoinment_app/Infrastructure/appointment_model.dart';
import 'package:appoinment_app/UI/Widgets/scheduled_doctor_view.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: const Text("Upcoming schedule", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 25),
              Expanded(
                  child: ListView.builder(
                itemCount: appointmentModel.length,
                itemBuilder: (context, index) {
                  return ScheduledDoctorView(
                      time: appointmentModel[index].time,
                      name: appointmentModel[index].name,
                      date: appointmentModel[index].date,
                      image: appointmentModel[index].image,
                      speciality: appointmentModel[index].speciality);
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
