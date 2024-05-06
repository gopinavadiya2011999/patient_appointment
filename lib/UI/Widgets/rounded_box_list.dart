import 'package:appoinment_app/Infrastructure/symptom_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedBoxList extends StatelessWidget {
  const RoundedBoxList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(symptomModel.length, (index)  {
          return Container(
            margin: const EdgeInsets.only(right: 13),
            child: Column(
              children: [
                Container(

                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                     color: Colors.grey.withOpacity(.12),
                    shape: BoxShape.circle,

                  ),
                  child: SvgPicture.asset(symptomModel[index].image,colorFilter: const ColorFilter.mode(Colors.green, BlendMode.srcIn),),
                ),const SizedBox(height: 8),
                Text(symptomModel[index].title,style: const TextStyle(color: Colors.grey,fontSize: 15, fontWeight:FontWeight.w400 ))


              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
