import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 280,
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 24,
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 237, 255),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Text(
                'Employee Details:',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Image.asset(
                    "assets/images/img_ggsipulogo1.png",
                    height: 110,
                  ),
              ),
              Text(
                '30597',
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Rahul Johari',
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'ASSOCIATE',
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              Text(
                'PROFESSOR, USAR',
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              Text(
                'rahul@ipu.ac.in',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
              Text(
                '+91 9910185349',
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 280,
          margin: const EdgeInsets.fromLTRB(0, 32, 0, 80),
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 24,
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 215, 237, 255),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Subjects you teach:',
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Cloud Dew Edge Fog(CDEF) Computing - Theory',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Cloud Dew Edge Fog(CDEF) Computing - Practical',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}