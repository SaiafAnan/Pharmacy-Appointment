import 'package:flutter/material.dart';
import 'package:pharmacy_appointment/patientList.dart';

class DashWidget extends StatelessWidget {
  const DashWidget({
    Key? key,
    required this.label,
    required this.imgPath,
  }) : super(key: key);

  final String label;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8.0,
            spreadRadius: 3.0,
            offset: Offset.zero,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imgPath,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.teal),
          ),
        ],
      ),
    );
  }
}
