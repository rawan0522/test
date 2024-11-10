import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testprayertime/Providers/prayertime_provider.dart';
import 'package:testprayertime/Widgets/prayertime_widget.dart';
class PrayertimeScreen extends StatelessWidget {
  const PrayertimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Test Prayer Time",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
      ),
      body: Consumer<PrayertimeProvider>(
        builder: (context, provider, child) {
          final prayerTimeV = provider.parayertimeModel;
          if(prayerTimeV == null){
            provider.fetchData();
            return Center(child: CircularProgressIndicator(),);
          }else{
            return ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 10,),
              itemCount: prayerTimeV.data.length,
                itemBuilder: (context, index) {
                  final name = prayerTimeV.data.keys;
                  final time = prayerTimeV.data.values;
                  final montH = prayerTimeV.month;
                  return PrayertimeWidget(
                      prayerName: name.elementAt(index),
                      prayerTime: time.elementAt(index),
                      month:provider.parayertimeModel!.month,
                  );
                },/////
            );
          }
        },
      ),
    );
  }
}
