import 'package:http/http.dart' as http;

import 'dart:convert';

class  GetAllEventsApi{

  Future<List> getAllEventsApi() async {

    var url = "http://192.168.1.219:44320/api/events/getAllEvents";

    var response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      var jsonData = json.decode(response.body).toList();

      return jsonData;
    }else {
      throw Exception('Veri çekme başarısız: ${response.statusCode}');

    }
  }
}