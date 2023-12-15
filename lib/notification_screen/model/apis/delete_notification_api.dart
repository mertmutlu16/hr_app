import 'package:http/http.dart' as http;

class DeleteNotificationApi {
  Future<bool> deleteNotificationApi(int notificationId) async {
    var url =
        "http://192.168.1.219:44320/api/notifications/deleteNotification/$notificationId";

    var response = await http.delete(Uri.parse(url));

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
