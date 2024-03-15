import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ViewAttendence extends StatefulWidget {
  const ViewAttendence({super.key});

  @override
  State<ViewAttendence> createState() => _ViewAttendenceState();
}

class _ViewAttendenceState extends State<ViewAttendence> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          Text(
                'Select your class to view and download attendence.',
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ],
      ),
    );
  }
}