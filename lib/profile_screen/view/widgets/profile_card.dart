import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 2.5.h),
         Card(
          color: Colors.white38,
          child: ListTile(
            leading: const Icon(Icons.business_center_outlined),
            title:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Department"),
                Text("${"Mobile".substring(0, 3)}..."),
              ],

            ),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit_outlined)),
          ),
        ),

         Card(
          color: Colors.white38,
          child: ListTile(
            leading: const Icon(Icons.email_outlined),
            title:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("E-mail"),
                Text("${"mert@gmail.com".substring(0, 3)}..."),
              ],

            ),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit_outlined)),
          ),
        ),

         Card(
          color: Colors.white38,
          child: ListTile(
            leading: const Icon(Icons.phone_android_outlined),
            title:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Phone"),
                Text("${"5380329797".substring(0, 3)}..."),
                
              ],

            ),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit_outlined)),
          ),
        ),

         Card(
          color: Colors.white38,
          child: ListTile(
            leading: const Icon(Icons.location_city_outlined),
            title:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Address"),
                Text("${"Bursa".substring(0, 3)}..."),
              ],

            ),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit_outlined)),
          ),
        ),

         Card(
          color: Colors.white38,
          child: ListTile(
            leading: const Icon(Icons.person_2_outlined),
            title:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Fullname"),
                Text("${"MERT MUTLU".substring(0, 3)}..."),
              ],

            ),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit_outlined)),
          ),
        ),

      

        
      ],
    );
  }
}