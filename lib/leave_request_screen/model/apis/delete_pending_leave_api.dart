import 'package:http/http.dart' as http;

class DeletePendingLeaveApi {
  Future<bool> deletePendingLeaveApi(int pendingLeaveId) async {
    var url =
        "http://192.168.1.219:44320/api/pendingLeaves/deletePendingLeave/$pendingLeaveId";

    var response = await http.delete(Uri.parse(url));

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
