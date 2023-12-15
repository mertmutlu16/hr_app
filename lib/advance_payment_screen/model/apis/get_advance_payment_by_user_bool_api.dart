import 'package:http/http.dart' as http;

import 'dart:convert';

class GetAdvancePaymentByUserBoolApi {
  Future getAdvancePaymentByUserBoolApi(int userId) async {
    var url =
        "http://192.168.1.219:44320/api/advancePayments/getAdvancePaymentByUserBool/$userId";

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {

      return true;
    } else {
      return false ;
    }
  }
}
