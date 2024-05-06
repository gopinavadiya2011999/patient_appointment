import 'package:flutter/material.dart';

class GreenBox extends StatelessWidget {
  const GreenBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.green.withOpacity(0.9),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
           Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: const Color(0xffbfefaa),
                child: Image.asset('assets/doctor3.png'),
              ),
              const SizedBox(width: 12),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dr. Rahi",style: TextStyle(color: Colors.white,fontSize: 20, fontWeight:FontWeight.bold )),
                  Text("General Doctor",style: TextStyle(color: Colors.white,fontSize:16 , fontWeight:FontWeight.w400 )),

                ],
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios_rounded,color: Colors.white)
            ],
          ),

          Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: const Divider(color: Colors.white,)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Icon(Icons.calendar_month_sharp,color: Colors.white,size: 20),
                SizedBox(width: 8),
                Text('Sunday, 12 June',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 12),)
              ],),
              Row(children: [
                Icon(Icons.access_time,color: Colors.white,size: 20),
                SizedBox(width: 8),
                Text('11:00 - 12:00 AM',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 12),)
              ],)
            ],
          ),
        ],
      ),
    );
  }
}
