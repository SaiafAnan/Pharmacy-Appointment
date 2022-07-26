// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pharmacy_appointment/patientList.dart';

import 'Widgets/dashWidget.dart';

final List<String> imgList = [
  'assets/images/Image.png',
];

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 27,
              color: Colors.white,
            ),
          ),
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/timerni.png',
                              width: 35,
                              height: 55,
                            ),
                            SizedBox(
                              width: 218,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/blue.png',
                                  height: 30,
                                  width: 30,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Hotline',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage("assets/images/pharmacy.jpg"),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Hello Rafa Pharma !',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'What are you today?',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/red.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                  Text(
                                    'Emergency',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                GridView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  children: [
                    DashWidget(
                      label: 'Visited Patient',
                      imgPath:
                          'assets/images/healthicons_outpatient-outline (1).png',
                    ),
                    DashWidget(
                      label: 'Running \nAppointment',
                      imgPath: 'assets/images/Group 949.png',
                    ),
                    InkWell(
                      child: DashWidget(
                        label: 'Appointment',
                        imgPath: 'assets/images/whh_appointment.png',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PatientList(),
                          ),
                        );
                      },
                    ),
                    DashWidget(
                      label: 'Doctors',
                      imgPath:
                          'assets/images/healthicons_doctor-male-outline.png',
                    ),
                    DashWidget(
                      label: 'Prescription',
                      imgPath: 'assets/images/iconoir_stats-report.png',
                    ),
                    DashWidget(
                      label: 'Packages',
                      imgPath: 'assets/images/eos-icons_packages-outlined.png',
                    ),
                  ],
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 20.0),
                ),
                Container(
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: CarouselSlider(
                      items: imgList
                          .map((item) => Container(
                                height: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(item),
                                        fit: BoxFit.cover)),
                              ))
                          .toList(),
                      options: CarouselOptions(autoPlay: true),
                    ),
                  ),
                ),
                GridView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  children: [
                    DashWidget(
                      label: 'Nearest Doctors',
                      imgPath: 'assets/images/Doctor icon.png',
                    ),
                    DashWidget(
                      label: 'Nearest Hospital',
                      imgPath: 'assets/images/iconoir_home-hospital.png',
                    ),
                    DashWidget(
                      label: 'Nearest Triage Point',
                      imgPath: 'assets/images/Triage icon.png',
                    ),
                  ],
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 20.0),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          color: Colors.teal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/entypo_home.png'),
              Image.asset('assets/images/Frame 5 (1).png'),
              Image.asset('assets/images/akar-icons_circle-plus-fill.png'),
              Image.asset('assets/images/bi_chat-left-text-fill.png'),
              Image.asset('assets/images/Frame 6623.png'),
            ],
          ),
        ),
      ),
    );
  }
}
