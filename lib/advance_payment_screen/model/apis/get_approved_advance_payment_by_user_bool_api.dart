import 'package:http/http.dart' as http;


class GetApprovedAdvancePaymentByUserBoolApi {
  Future getApprovedAdvancePaymentByUserBoolApi(int userId) async {
    var url =
        "http://192.168.1.219:44320/api/approvedAdvancePayment/getApprovedAdvancePaymentByUserBool/$userId";

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {

      return true;
    } else {
      return false ;
    }
  }
}
