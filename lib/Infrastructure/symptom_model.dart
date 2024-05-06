
class SymptomModel {
  String image;
  String title;

  SymptomModel({required this.image, required this.title});
}

List<SymptomModel> symptomModel =[
  SymptomModel(image: "assets/svgs/covid.svg", title: "Covid 19"),
  SymptomModel(image: "assets/svgs/doctor.svg", title: "Doctor"),
  SymptomModel(image: "assets/svgs/medicine.svg", title: "Medicine"),
  SymptomModel(image: "assets/svgs/hospital.svg", title: "Hospital"),
];