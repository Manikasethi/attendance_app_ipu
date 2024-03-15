import 'package:attendance_app_ipu/home.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  int state = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 25, 6, 131),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 50,
            ),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/img_ggsipulogo1.png",
                  height: 80,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text('Enter your Employee ID to access your dashboard'),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Enter your ID'),
                  ),
                ),
                if (state == 0)
                  TextField(
                  decoration: InputDecoration(labelText: 'Password'),
                  ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ),
                        );
                      },
                      child: Text(state == 0 ? 'Log In' : 'Send Otp'),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (state == 0)
                            state = 1;
                          else
                            state = 0;
                        });
                      },
                      child: Text(
                          state == 0 ? 'Forgot Password?' : 'Login Instead?'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
