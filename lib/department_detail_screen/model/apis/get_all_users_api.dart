import 'package:hr_app/utils/models/users.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

//Getting all users by departments 

class GetAllUsersApi {
  Future<List<Users>> getAllUsersApi(String departmentName) async {
    var url = "http://192.168.1.219:44320/api/users/getAllUsersByDepartment/$departmentName";

    var response = await http.post(Uri.parse(url));

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body) as List;
      List<Users> usersList =
          jsonData.map((item) => Users.fromJson(item)).toList();
      return usersList;
    } else {
      throw Exception('Veri çekme başarısız: ${response.statusCode}');
    }
  }
}
