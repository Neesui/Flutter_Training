import 'package:flutter/material.dart';
import 'package:padmakanya_app/screens/about_screen.dart';
import 'package:padmakanya_app/screens/notice_screen.dart';
import 'package:padmakanya_app/widgets/courses_card.dart';
import 'package:padmakanya_app/widgets/faculty_card.dart';
import 'package:padmakanya_app/widgets/heading.dart';
import 'package:padmakanya_app/widgets/event_tile.dart';

// Dummy Event Class
class Event {
  final String title;
  final String description;

  Event({required this.title, required this.description});
}

// Dummy Event Data
final List<Event> events = [
  Event(title: "Cultural Fest", description: "A vibrant cultural event."),
  Event(title: "Tech Talk", description: "Discuss the latest in tech."),
  Event(title: "Sports Day", description: "An exciting day for sports!"),
];

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
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Section
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(color: const Color(0xff000B58)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "WELCOME TO THE COLLEGE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Padma Kanya Multiple Campus (PKMC) was established in 1951 (Aswin 2008 B.S.) as the first women’s campus of Nepal. Initially, its academic activities were brought into operation at the present location of Kanya School, Dillibazar...",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const AboutScreen()),
                            );
                          },
                          child: const Text("Read More"),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const NoticeScreen()),
                            );
                          },
                          child: const Text("Go Notice Page"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Faculties Section
              const Heading(text: "Our Faculties"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    Facultycard(
                        text: "Faculty of Humanities and Social Science"),
                    SizedBox(width: 20),
                    Facultycard(text: "Faculty of Management"),
                    SizedBox(width: 20),
                    Facultycard(text: "Institute of Science and Technology"),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Courses Section
              const Heading(text: "Our Courses"),
              const SizedBox(height: 15),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.8,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  CourseCard(
                    title: "BCA",
                    subtitle: "Bachelor in Computer Application",
                  ),
                  CourseCard(
                    title: "Bsc.CSIT",
                    subtitle:
                        "Bachelor of Computer Science and Information Technology",
                  ),
                  CourseCard(
                    title: "BBS",
                    subtitle: "Bachelor of Business Study",
                  ),
                  CourseCard(
                    title: "BSW",
                    subtitle: "Bachelor of Social Work",
                  ),
                  CourseCard(
                    title: "BIT",
                    subtitle: "Bachelor of Information Technology",
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Events Section
              const Heading(text: "Events"),
              ListView.builder(
                itemCount: events.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  Event event = events[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: EventTile(
                      title: event.title,
                      description: event.description,
                    ),
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
