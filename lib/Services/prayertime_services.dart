import 'package:flutter/cupertino.dart';
import 'package:testprayertime/Models/parayertime_model.dart';
import 'package:dio/dio.dart';
class PrayertimeServices {
static Dio dio = new Dio();
static Future<ParayertimeModel>getService()async{
try{
  String url ="http://api.aladhan.com/v1/timingsByCity?country=EG&city=cairo";
  var response = await dio.get(url);
  if(response.statusCode==200){
    return ParayertimeModel.formjson(response.data);
  }else {
    throw Exception("fail to load");

  }
}catch(e){
  throw Exception(e.toString());

}
}
}

