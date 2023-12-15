import 'package:http/http.dart' as http;

class DeleteAdvancePaymentApi {
  Future<bool> deleteAdvancePaymentApi(int advancePaymentId) async {
    var url =
        "http://192.168.1.219:44320/api/advancePayments/deleteAdvancePayment/$advancePaymentId";

    var response = await http.delete(Uri.parse(url));

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
