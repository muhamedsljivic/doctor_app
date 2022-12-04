library faker.example;

import 'package:doctor_app/models/popup_logout.dart';
import 'package:flutter/material.dart';

const List<Map<String, String>> DUMMY_DATA = [
  {
    "patient_time": "16:00",
    "patients_name": "Alen K.",
    "patients_disease": "Common cold",
    "patient_picture": "assets/patient-2.png",
  },
  {
    "patient_time": "16:00",
    "patients_name": "Alen K.",
    "patients_disease": "Common cold",
    "patient_picture": "assets/patient-3.png",
  },
  {
    "patient_time": "16:00",
    "patients_name": "Alen K.",
    "patients_disease": "Common cold",
    "patient_picture": "assets/patient-4.png",
  },
  {
    "patient_time": "16:00",
    "patients_name": "Alen K.",
    "patients_disease": "Common cold",
    "patient_picture": "assets/patient-5.png",
  },
  {
    "patient_time": "16:00",
    "patients_name": "Alen K.",
    "patients_disease": "Common cold",
    "patient_picture": "assets/patient-6.png",
  },
  {
    "patient_time": "16:00",
    "patients_name": "Alen K.",
    "patients_disease": "Common cold",
    "patient_picture": "assets/patient-7.png",
  },
  {
    "patient_time": "16:00",
    "patients_name": "Alen K.",
    "patients_disease": "Common cold",
    "patient_picture": "assets/patient-1.png",
  },
  {
    "patient_time": "16:00",
    "patients_name": "Alen K.",
    "patients_disease": "Common cold",
    "patient_picture": "assets/patient-2.png",
  },
  {
    "patient_time": "16:00",
    "patients_name": "Alen K.",
    "patients_disease": "Common cold",
    "patient_picture": "assets/patient-3.png",
  },
  {
    "patient_time": "16:00",
    "patients_name": "Alen K.",
    "patients_disease": "Common cold",
    "patient_picture": "assets/patient-4.png",
  }
];

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
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/doctor_pic.jpg"),
            ),
            title: Text(
              "My profile",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Dr. Jon Doe",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
