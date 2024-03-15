import 'package:attendance_app_ipu/dashboard.dart';
import 'package:attendance_app_ipu/drawer_tile.dart';
import 'package:attendance_app_ipu/profile.dart';
import 'package:attendance_app_ipu/take_attendence.dart';
import 'package:attendance_app_ipu/view_attendence.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  String state = 'dashboard';
  String state2 = 'main';
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 8, 20, 125),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/images/ipu_logo.png",
                  height: 120,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Attendance',
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Management System',
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '- GGSIPU',
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Main',
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      state = 'dashboard';
                      state2 = 'main';
                      Navigator.pop(context);
                    });
                  },
                  child: DrawerTile(
                    text: 'Dashboard',
                    icon: Icons.dashboard_outlined,
                    color: state == 'dashboard'
                        ? const Color.fromARGB(255, 133, 199, 254)
                        : const Color.fromARGB(255, 8, 20, 125),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      state = 'profile';
                      state2 = 'main';
                      Navigator.pop(context);
                    });
                  },
                  child: DrawerTile(
                    text: 'My Profile',
                    icon: Icons.person_2_outlined,
                    color: state == 'profile'
                        ? const Color.fromARGB(255, 133, 199, 254)
                        : const Color.fromARGB(255, 8, 20, 125),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Attendence',
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      state = 'take_attendence';
                      state2 = 'attendence';
                      Navigator.pop(context);
                    });
                  },
                  child: DrawerTile(
                    text: 'Take Attendence',
                    icon: Icons.local_library_outlined,
                    color: state == 'take_attendence'
                        ? const Color.fromARGB(255, 133, 199, 254)
                        : const Color.fromARGB(255, 8, 20, 125),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      state = 'view_attendence';
                      state2 = 'attendence';
                      Navigator.pop(context);
                    });
                  },
                  child: DrawerTile(
                    text: 'View Attendence',
                    icon: Icons.school_outlined,
                    color: state == 'view_attendence'
                        ? const Color.fromARGB(255, 133, 199, 254)
                        : const Color.fromARGB(255, 8, 20, 125),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 250,
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4,),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.logout_outlined, color: Colors.white,),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Log out",
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 8, 20, 125),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Center(
                          child: Image.asset(
                            "assets/images/ipu_logo.png",
                            height: 120,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 15,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Guru Gobind Singh',
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Indraprastha University',
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Attendence Management System',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        _key.currentState?.openDrawer();
                      },
                      icon: const Icon(Icons.menu_sharp, size: 30),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              state2 == 'main'
                  ? state == 'dashboard'
                      ? const Dashboard()
                      : const Profile()
                  : state == 'take_attendence'
                      ? const TakeAttendance()
                      : const ViewAttendence(),
            ],
          ),
        ),
      ),
    );
  }
}
