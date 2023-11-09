import 'dart:convert';
import 'package:http/http.dart' as http;

class UserVerificationApi {
  Future userVerify(String email, String password) async {
    var url = "http://192.168.1.219:44320/api/users/userVerification";
    var userModel = {
      "Email": email,
      "Fullname": "",
      "Department": "",
      "PhoneNumber": "",
      "BirthDay": 31,
      "BirthMonth": 1,
      "BirthYear": 2001,
      "Password": password
    };
    var userModelJson = jsonEncode(userModel);
    //print("RESPONSE ÖNCESİ");
    var response = await http.post(
      Uri.parse(url),
      body: userModelJson,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    //print("RESPONSE :  ${response.body} ");

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      return jsonData;
    } else {
      throw Exception('Veri çekme başarısız: ${response.statusCode}');
    }
  }
}