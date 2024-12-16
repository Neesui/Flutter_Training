import 'package:flutter/material.dart';
import 'package:padmakanya_app/screens/about_screen.dart';
import 'package:padmakanya_app/widgets/courses_card.dart';
import 'package:padmakanya_app/widgets/faculty_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/pk.png",
              width: 40,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("PadmaKanya Multiple Campus"),
                Text(
                  "Bagbazar, Kathmandu",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Section
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Color(0xff000B58)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WELCOME TO THE COLLEGE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "Padma Kanya Multiple Campus (PKMC) was established in 1951 (Aswin 2008 B.S.) as the first women’s campus of Nepal. Initially, its academic activities were brought into operation at the present location of Kanya School, Dillibazar...",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 5),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return AboutScreen();
                          }));
                        },
                        child: Text("Read More")),
                  ],
                ),
              ),

              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Our Facilities",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Facilities Section
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Facultycard(
                      text: "Faculty of Humanities and Social Science",
                    ),
                    SizedBox(width: 10),
                    Facultycard(
                      text: "Faculty of Management",
                    ),
                    SizedBox(width: 10),
                    Facultycard(text: "Institute of Science and Technology"),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Our Courses",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics:
                    NeverScrollableScrollPhysics(), // Disable GridView scroll
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two columns
                  crossAxisSpacing: 10, // Spacing between columns
                  mainAxisSpacing: 10, // Spacing between rows
                  childAspectRatio: 1.5, // Adjust card aspect ratio
                ),
                itemCount: 8, // Total number of items
                itemBuilder: (context, index) {
                  return CoursesCard(
                    text: index % 6 == 0 ? "BCA" : "BBA",
                    subtitle: index % 2 == 0
                        ? "Bachelor of Computer Applications"
                        : "Bachelor of Business Administration",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
