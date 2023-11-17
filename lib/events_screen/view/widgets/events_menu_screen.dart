import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class EventsMenuScreen extends StatefulWidget {
  const EventsMenuScreen({super.key});

  @override
  State<EventsMenuScreen> createState() => _EventsMenuScreenState();
}

class _EventsMenuScreenState extends State<EventsMenuScreen> {
  var eventsList = [
    {
      "name": "Halısaha",
      "location": "Spor Kompleksi",
      "time": "14:00",
      "description": "Futbol turnuvası"
    },
    {
      "name": "Tenis",
      "location": "Tenis Kulübü",
      "time": "16:30",
      "description": "Tenis maçları ve eğitimi"
    },
    {
      "name": "Eğitim",
      "location": "Toplantı Salonu",
      "time": "10:00",
      "description": "Şirket içi eğitim semineri"
    },
    {
      "name": "Etkinlik",
      "location": "Bahçe",
      "time": "18:00",
      "description": "Personel partisi ve etkinlikleri"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 2.5.h),
        SizedBox(
          height: 75.h,
          child: ListView.builder(
              itemCount: eventsList.length,
              itemBuilder: ((context, index) {
                return SizedBox(
                  height: 25.h,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.5.h),
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding:  EdgeInsets.all(1.5.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                      
                          Padding(
                            padding:  EdgeInsets.only(bottom :1.h),
                            child: Text(
                              "${eventsList[index]['name']}",
                              style: TextStyle(
                                  fontSize: 14.0.sp, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(bottom :1.h),
                            child: Text(
                              "${eventsList[index]['description']}",
                              style: TextStyle(
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(bottom :1.h),
                            child: Text(
                              "Loaction: ${eventsList[index]['location']}",
                              style: TextStyle(
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          Text(
                            "Time: ${eventsList[index]['time']}",
                            style: TextStyle(
                                fontSize: 12.0.sp,
                                fontWeight: FontWeight.normal),
                          ),
                        ]),
                      ),
                    ),
                  ),
                );
              })),
        )
      ],
    );
  }
}
