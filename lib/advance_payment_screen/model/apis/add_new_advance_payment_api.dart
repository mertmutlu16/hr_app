import 'package:http/http.dart' as http;
import 'dart:convert';

class AddNewAdvancePaymentApi {
  Future addNewAdvancePaymentApi(
    int advanceAmount,
    int startDay,
    int startMonth,
    int startYear,
    int endDay,
    int endMonth,
    int endYear,
    int userId,
    String fullName,
  ) async {
    var url =
        "http://192.168.1.219:44320/api/advancePayments/createNewAdvancePayment";

    var advancePaymentModel = {
      "AdvanceAmount": advanceAmount,
      "StartDay": startDay,
      "StartMonth": startMonth,
      "StartYear": startYear,
      "EndDay": endDay,
      "EndMonth": endMonth,
      "EndYear": endYear,
      "UserId": userId,
      "Fullname": fullName
    };

    var advancePaymentModellJson = jsonEncode(advancePaymentModel);

    var response = await http.post(
      Uri.parse(url),
      body: advancePaymentModellJson,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }
}
