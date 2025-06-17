import 'package:flutter/material.dart';

class SpeedMeter extends StatelessWidget {
  final String title;
  final IconData icon;
  const SpeedMeter({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(240, 106, 48, 0.24),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(icon, color: Color(0xffF06A30), size: 20),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '0.00',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                ' mb/s',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
