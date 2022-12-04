library faker.example;

import 'package:doctor_app/models/popup_logout.dart';
import 'package:flutter/material.dart';

// TODO: ovo moram da hardcode-am, jer ne mogu nigdje da
// TODO: da nađem kako se u dart-u koristi dummy, a uskoro ćete pregledat

// const List<Map<String, String>> DUMMY_DATA = [
//   {
//     "patient_time": "16:00",
//     "patients_name": "Alen K.",
//     "patients_disease": "Common cold",
//     "patient_picture": "assets/patient-2.png",
//   },
//   {
//     "patient_time": "16:00",
//     "patients_name": "Alen K.",
//     "patients_disease": "Common cold",
//     "patient_picture": "assets/patient-3.png",
//   },
//   {
//     "patient_time": "16:00",
//     "patients_name": "Alen K.",
//     "patients_disease": "Common cold",
//     "patient_picture": "assets/patient-4.png",
//   },
//   {
//     "patient_time": "16:00",
//     "patients_name": "Alen K.",
//     "patients_disease": "Common cold",
//     "patient_picture": "assets/patient-5.png",
//   },
//   {
//     "patient_time": "16:00",
//     "patients_name": "Alen K.",
//     "patients_disease": "Common cold",
//     "patient_picture": "assets/patient-6.png",
//   },
//   {
//     "patient_time": "16:00",
//     "patients_name": "Alen K.",
//     "patients_disease": "Common cold",
//     "patient_picture": "assets/patient-7.png",
//   },
//   {
//     "patient_time": "16:00",
//     "patients_name": "Alen K.",
//     "patients_disease": "Common cold",
//     "patient_picture": "assets/patient-1.png",
//   },
//   {
//     "patient_time": "16:00",
//     "patients_name": "Alen K.",
//     "patients_disease": "Common cold",
//     "patient_picture": "assets/patient-2.png",
//   },
//   {
//     "patient_time": "16:00",
//     "patients_name": "Alen K.",
//     "patients_disease": "Common cold",
//     "patient_picture": "assets/patient-3.png",
//   },
//   {
//     "patient_time": "16:00",
//     "patients_name": "Alen K.",
//     "patients_disease": "Common cold",
//     "patient_picture": "assets/patient-4.png",
//   }
// ];

class HomePage extends StatefulWidget {
  static const String routeName = "/home-screen";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool tappedYes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/Vector.png",
              height: 32,
            ),
            TextButton(
                onPressed: () async {
                  final action = await AlertDialogs.yesCancelDialog(
                      context, 'Log Out', 'Are you sure?');
                  if (action == DialogsAction.yes) {
                    setState(() => tappedYes = true);
                  } else {
                    setState(() => tappedYes = false);
                  }
                },
                child: const Icon(Icons.logout))
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/doctor_pic.jpg"),
            ),
            title: Text(
              "My profile",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Dr. Jon Doe",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          ListTile(
            title: Text(
              "Patient list for today",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/patient-1.png"),
            ),
            title: Text(
              "Alen K.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            subtitle: Text(
              "16:00 Common cold",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/patient-2.png"),
            ),
            title: Text(
              "Kim.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            subtitle: Text(
              "16:30 Common cold",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/patient-3.png"),
            ),
            title: Text(
              "Amy F.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            subtitle: Text(
              "16:30 Covid 19",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            title: Text(
              "Tomorrow",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/patient-4.png"),
            ),
            title: Text(
              "Xyz F.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            subtitle: Text(
              "14:00 Covid 19",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/patient-7.png"),
            ),
            title: Text(
              "John D.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            subtitle: Text(
              "15:30 Headache",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/patient-5.png"),
            ),
            title: Text(
              "Anne L.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            subtitle: Text(
              "14:30 Stomachache",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/patient-6.png"),
            ),
            title: Text(
              "Lae P.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            subtitle: Text(
              "15:30 Covid 19",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
