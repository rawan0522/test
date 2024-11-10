class ParayertimeModel {
  Map <String , dynamic> data;
  String month;
  ParayertimeModel({required this.data , required this.month});

  factory ParayertimeModel.formjson(Map<String,dynamic>json){
  return ParayertimeModel(data: json["data"]["timings"],
    month:json["data"]["date"]["hijri"]["month"]["ar"]
  );
  }
}
