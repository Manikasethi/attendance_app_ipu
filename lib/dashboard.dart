import 'package:attendance_app_ipu/take_attendence.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 240,
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 198, 229, 255),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Take Attendence',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 240,
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 198, 229, 255),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'View Attendence',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
