
import 'package:http/http.dart' as http;

class EventDeleteApi{

  Future<bool> eventDeleteApi(int eventId) async{

    var url = "http://192.168.1.219:44320/api/events/deleteEvent/$eventId";

    var response = await http.delete(Uri.parse(url));

    if(response.statusCode == 200){
      return true;
    }else{
      return false;
    }


     
  }

}