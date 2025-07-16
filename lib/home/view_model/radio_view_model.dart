import 'dart:convert';

import 'package:http/http.dart';
import 'package:islami_project/home/model/RadioResponse.dart';
import 'package:http/http.dart' as http;
import 'package:islami_project/home/model/Radios.dart';

class RadioViewModel {

  static Future<List<Radios>>getRadioData() async{
    const radioPath = "https://mp3quran.net/api/v3/radios";
    Response response = await http.get(Uri.parse(radioPath));
    final json = jsonDecode(response.body);
    final data = RadioResponse.fromJson(json);
    return data.radios??[];

  }

}