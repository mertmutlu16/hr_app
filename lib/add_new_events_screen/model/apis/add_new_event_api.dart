import 'package:http/http.dart' as http;
import 'dart:convert';

class AddNewEventApi {
  
  
  Future addNewEventApi(
    String eventName,
    String eventLocation,
    String eventDay,
    String eventTime, 
    String eventDescription) async {
    var url = "http://192.168.1.219:44320/api/events/createNewEvent";

    var eventModel = {
      "EventName": eventName,
      "EventLocation": eventLocation,
      "EventDay": eventDay,
      "EventTime": eventTime,
      "EventDescription": eventDescription,
    };

    var eventModelJson = jsonEncode(eventModel);

    var response = await http.post(
      Uri.parse(url),
      body: eventModelJson,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 201) {
      print("New event created");
    } else {
      throw Exception('Veri gönderme basarisiz: ${response.statusCode}');
    }
  }
}
