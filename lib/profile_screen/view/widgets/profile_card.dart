import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hr_app/login_screen/view_model/login_screen_view_model.dart';
import 'package:hr_app/utils/locator/locator.dart';
import 'package:sizer/sizer.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  final profileScreenViewModel = locator<LoginScreenViewModel>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 2.5.h),
        Card(
          color: Colors.white38,
          child: ListTile(
            leading: const Icon(Icons.business_center_outlined),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Department"),
                Observer(
                  builder: (_) {
                    return Text(
                        "${profileScreenViewModel.user!.department.substring(0, 3)}...");
                  },
                ),
              ],
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.edit_outlined)),
          ),
        ),
        Card(
          color: Colors.white38,
          child: ListTile(
            leading: const Icon(Icons.email_outlined),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("E-mail"),
                Observer(
                  builder: (_) {
                    return Text(
                        "${profileScreenViewModel.user!.email.substring(0, 3)}...");
                  },
                ),
              ],
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.edit_outlined)),
          ),
        ),
        Card(
          color: Colors.white38,
          child: ListTile(
            leading: const Icon(Icons.phone_android_outlined),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Phone"),
                Observer(
                  builder: (_) {
                    return Text(
                        "${profileScreenViewModel.user!.phoneNumber.substring(0, 3)}...");
                  },
                ),
              ],
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.edit_outlined)),
          ),
        ),
        Card(
          color: Colors.white38,
          child: ListTile(
            leading: const Icon(Icons.location_city_outlined),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Address"),
                Text("${"Bursa".substring(0, 3)}..."),
              ],
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.edit_outlined)),
          ),
        ),
        Card(
          color: Colors.white38,
          child: ListTile(
            leading: const Icon(Icons.person_2_outlined),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Fullname"),
                Observer(
                  builder: (_) {
                    return Text(
                        "${profileScreenViewModel.user!.fullname.substring(0, 3)}...");
                  },
                ),
              ],
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.edit_outlined)),
          ),
        ),
      ],
    );
  }
}
