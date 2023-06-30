import 'package:flutter/material.dart';

Widget button() {
  return Container(
    height: 40,
    width: 120,
    color: Colors.deepPurple,
    child: const Center(
      child: Text(
        'See Availability',
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget houseRow(Icon icon, String title, String desc, double val) {
  return Container(
    height: val,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 215,
          child: Row(
            children: [
              icon,
              Text(
                title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              )
            ],
          ),
        ),
        Container(width: 250, child: Text(desc))
      ],
    ),
  );
}
