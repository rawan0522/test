import 'package:flutter/material.dart';

class PrayertimeWidget extends StatelessWidget {
  const PrayertimeWidget({super.key , required this.prayerName , required this.prayerTime , required this.month});
final String prayerName;
final String prayerTime;
final String month;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      shadowColor: Colors.pink,
      color: Colors.pinkAccent.shade100,
      margin: EdgeInsets.all(12),
      elevation: 8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(prayerName , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(prayerTime , style: TextStyle(fontSize:20 , ),),
          ),  Padding(
            padding: const EdgeInsets.all(10),
            child: Text(month , style: TextStyle(fontSize:20 , ),),
          ),
        ],
      ),
    );
  }
}
