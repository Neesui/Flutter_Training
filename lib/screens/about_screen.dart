import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                child: Stack(
                  children: [
                    Image.asset("assets/aboutus.jpg"),
                    Container(
                      color: Colors.black.withOpacity(0.5),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        "PadmaKanya Campus",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text(
                  "Padma Kanya Multiple Campus (PKMC) was established in 1951 (Aswin 2008 B.S.) as the first women’s campus of Nepal. Initially, its academic activities were brought into operation at the present location of Kanya School, Dillibazar. King Tribhuvan inaugurated the campus. The then Prime Minister (Head of the Government) Mohan Shamsher Rana, Finance Minister Subarna Sumsher Rana, Home Minister B. P. Koirala, Minister of Education, Nripa Jung Rana, and the social workers of the time were present on the occasion. At the time of establishment, its academic programme started in eight subjects of humanities.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),

              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text(
                  "Padma Kanya Multiple Campus (PKMC) was established in 1951 (Aswin 2008 B.S.) as the first women’s campus of Nepal. Initially, its academic activities were brought into operation at the present location of Kanya School, Dillibazar. King Tribhuvan inaugurated the campus. The then Prime Minister (Head of the Government) Mohan Shamsher Rana, Finance Minister Subarna Sumsher Rana, Home Minister B. P. Koirala, Minister of Education, Nripa Jung Rana, and the social workers of the time were present on the occasion. At the time of establishment, its academic programme started in eight subjects of humanities.Moderately meeting its infrastructural requirements, the Campus has five buildings— two for conducting classes, and accommodating administrative facilities, one for the computer laboratory, physical and e-library, one for girls’ dormitory with the capacity of 200 students, and an old-hostel building which after renovation is planned to be used for Bachelor of Hotel Management (BHM) program.\n\n A few other smaller built spaces accommodate campus cafeteria and Dance Section with theater and class facilities for the Master’s program. Although the campus has spacious area, it still requires additional built-space to accommodate the growing number of classes with the expansion of academic programs, and a library with sufficient resources to serve the academic needs of students. Further, the library is in a dire need of expansion of its collection of books, journals, newspaper, magazines, and periodicals with e-library extension and upgradation.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),

              // Back Button
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Button background color
                    foregroundColor: Colors.white, // Button text color
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(); // Navigate back
                  },
                  child: const Text("Go Back"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
