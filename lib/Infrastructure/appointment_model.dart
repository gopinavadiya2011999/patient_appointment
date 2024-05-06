class AppointmentModel {
  final String image;
  final String date;
  final String time;
  final String name;
  final String speciality;

  AppointmentModel({required this.image, required this.date, required this.time, required this.name, required this.speciality});
}

List<AppointmentModel> appointmentModel = [
  AppointmentModel(image: 'assets/doctor_person.png', date: 'Monday, 11 April', time: '10:00 - 01:00 AM', name: 'Dr. Brostito', speciality: 'MD'),
  AppointmentModel(image: 'assets/doctor2.png', date: 'Thursday, 11 June', time: '01:00 - 3:00 PM', name: 'Dr. Bessie', speciality: 'Physician'),
  AppointmentModel(image: 'assets/doctor3.png', date: 'Saturday, 27 January', time: '11:00 - 01:00 PM', name: 'Dr. Babe', speciality: 'Heart Specialist'),
];
