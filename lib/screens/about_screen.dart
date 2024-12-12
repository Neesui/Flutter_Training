import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"), // Added a title for better UX
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align content to the start
            children: [
              // Decorative Box with Title
              Container(
                height: 150, // Set height
                width: double.infinity, // Full width
                margin: const EdgeInsets.all(16), // Add margin
                decoration: BoxDecoration(
                  color: Colors.blue[100], // Background color
                  borderRadius: BorderRadius.circular(16), // Rounded corners
                  border: Border.all(
                    color: Colors.blueAccent, // Border color
                    width: 2, // Border width
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Padmakanya Multiple Campus",
                    style: TextStyle(
                      fontSize: 24, // Adjusted font size for better readability
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center, // Center-align text
                  ),
                ),
              ),
              Container(
                width: double.infinity, // Full width
                margin: const EdgeInsets.all(16), // Add margin
                padding: const EdgeInsets.all(12), // Padding for inner content
                decoration: BoxDecoration(
                  color: Colors.blue[50], // Subtle background color
                  borderRadius: BorderRadius.circular(16), // Rounded corners
                ),
                child: const Text(
                  "Padma Kanya Multiple Campus (PKMC) was established in 1951 (Aswin 2008 B.S.) as the first women’s campus of Nepal. Initially, its academic activities were brought into operation at the present location of Kanya School, Dillibazar. King Tribhuvan inaugurated the campus. The then Prime Minister (Head of the Government) Mohan Shamsher Rana, Finance Minister Subarna Sumsher Rana, Home Minister B. P. Koirala, Minister of Education, Nripa Jung Rana, and the social workers of the time were present on the occasion. At the time of establishment, its academic programme started in eight subjects of humanities.",
                  style: TextStyle(
                    fontSize: 16, // Reduced font size for longer content
                    fontWeight: FontWeight.normal, // Normal font weight
                    height: 1.5, // Line height for better readability
                  ),
                  textAlign: TextAlign.justify, // Justify text alignment
                ),
              ),
              Container(
                width: double.infinity, // Full width
                margin: const EdgeInsets.all(16), // Add margin
                padding: const EdgeInsets.all(12), // Padding for inner content
                decoration: BoxDecoration(
                  color: Colors.blue[50], // Subtle background color
                  borderRadius: BorderRadius.circular(16), // Rounded corners
                ),
                child: const Text(
                  "Padma Kanya Multiple Campus (PKMC) was established in 1951 (Aswin 2008 B.S.) as the first women’s campus of Nepal. Initially, its academic activities were brought into operation at the present location of Kanya School, Dillibazar. King Tribhuvan inaugurated the campus. The then Prime Minister (Head of the Government) Mohan Shamsher Rana, Finance Minister Subarna Sumsher Rana, Home Minister B. P. Koirala, Minister of Education, Nripa Jung Rana, and the social workers of the time were present on the occasion. At the time of establishment, its academic programme started in eight subjects of humanities.",
                  style: TextStyle(
                    fontSize: 16, // Reduced font size for longer content
                    fontWeight: FontWeight.normal, // Normal font weight
                    height: 1.5, // Line height for better readability
                  ),
                  textAlign: TextAlign.justify, // Justify text alignment
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
