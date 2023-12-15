import 'package:http/http.dart' as http;

import 'dart:convert';

class GetAllAdvancePaymentsRequestApi {
  Future<List> getAllAdvancePaymentsRequestApi() async {
    var url =
        "http://192.168.1.219:44320/api/advancePayments/getAllAdvancePayments";

    var response = await http.get(Uri.parse(url));
    
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body).toList();

      return jsonData;
    } else {
      throw Exception('Veri çekme başarısız: ${response.statusCode}');
    }
  }
}
