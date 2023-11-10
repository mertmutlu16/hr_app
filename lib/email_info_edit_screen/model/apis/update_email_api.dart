import 'dart:convert';
import 'package:http/http.dart' as http;

class UpdateEmailApi {
  Future updateEmail(
    int id,
    String email,
  ) async {
    var url = "http://192.168.1.219:44320/api/users/updateUserEmail/$id";

    var userModel = {
      "Email": email,
      "Fullname": "",
      "Department": "",
      "PhoneNumber": "",
      "BirthDay": 1,
      "BirthMonth": 1,
      "BirthYear": 2001,
      "Password": ""
    };
    var userModelJson = jsonEncode(userModel);
    var response = await http.put(
      Uri.parse(url),
      body: userModelJson,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      return jsonData;
    } else {
      throw Exception('Veri güncelleme başarısız: ${response.statusCode}');
    }
  }
}
