import 'package:http/http.dart' as http;

import 'dart:convert';


class DepartmentApi{

  Future<List<String>> departmentApi() async {

    var url = "http://192.168.1.219:44320/api/users/getUsedDepartments";

    var response = await http.get(Uri.parse(url));

  if(response.statusCode == 200){
      var jsonData = json.decode(response.body);
      List<String> result = jsonData.map<String>((item) => item.toString()).toList();
      return result;
    }else {
      throw Exception('Veri çekme başarısız: ${response.statusCode}');

    }
    
  }
}