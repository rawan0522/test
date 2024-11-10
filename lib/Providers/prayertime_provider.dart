import 'package:flutter/cupertino.dart';
import 'package:testprayertime/Models/parayertime_model.dart';
import 'package:testprayertime/Services/prayertime_services.dart';
class PrayertimeProvider extends ChangeNotifier {
  ParayertimeModel? parayertimeModel;

Future<void> fetchData()async{
  parayertimeModel= await PrayertimeServices.getService();
  notifyListeners();
}
}
