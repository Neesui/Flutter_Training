import 'package:flutter/material.dart';

class CoursesCard extends StatelessWidget {
  const CoursesCard({
    super.key,
    required this.text,
    required this.subtitle,
  });
  final String text;
  final String subtitle; // Subtitle or additional text

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xff007965),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal, // You can adjust this
                    fontSize: 15, // Slightly smaller for subtitle
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
