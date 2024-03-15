import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({super.key, required this.text, required this.icon, required this.color,});
  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.all(4),
          width: 226,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: color,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 26,
                weight: 900,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                text,
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
