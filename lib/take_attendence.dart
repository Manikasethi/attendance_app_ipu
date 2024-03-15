import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TakeAttendance extends StatefulWidget {
  const TakeAttendance({super.key});

  @override
  State<TakeAttendance> createState() => _TakeAttendanceState();
}

class _TakeAttendanceState extends State<TakeAttendance> {
  int _selectedIndex = -1; // Default no selection
  bool _continueEnabled = false;

  //TimeOfDay? time = const TimeOfDay(hour: 12, minute: 12);
  TimeOfDay? Starttime = TimeOfDay.now();
  TimeOfDay? Endtime = TimeOfDay.now();
  // TimeOfDay _startTime = TimeOfDay.now(); // Added this line
  // TimeOfDay _endTime = TimeOfDay.now(); // Added this line

  void _onButtonPressed(int index) {
    setState(() {
      _selectedIndex = index;
      _continueEnabled = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Select your class for \n taking attendance',
            style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              _buildButton(
                  0, 'IIOT - 5th sem - B1\nSoftware Engineering - Theory'),
              const SizedBox(
                height: 20,
              ),
              _buildButton(
                  1, 'IIOT - 5th sem - B2\nSoftware Engineering - Theory'),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 65),
            // padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Start Time", style: TextStyle(
             fontFamily: 'sanserif',fontWeight: FontWeight.w400),
                      
                    ),
                    GestureDetector(
                      onTap: () async {
                        TimeOfDay? newStartTime = await showTimePicker(
                          context: context,
                          initialTime: Starttime!,
                        );
                        if (newStartTime != null) {
                          setState(() {
                            Starttime = newStartTime;
                          });
                        }
                      },
                      child: Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromRGBO(4, 29, 85, 1)),
                        child: Text(
                          '${Starttime!.hour.toString()}:${Starttime!.minute.toString()}',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("End Time",
                     style: TextStyle(
             fontFamily: 'sanserif',fontWeight: FontWeight.w400),
                     ),
                   
                    GestureDetector(
                      onTap: () async {
                        TimeOfDay? newEndTime = await showTimePicker(
                          context: context,
                          initialTime: Endtime!,
                        );
                        if (newEndTime != null) {
                          setState(() {
                            Endtime = newEndTime;
                          });
                        }
                      },
                      child: Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromRGBO(4, 29, 85, 1)),
                        child: Text(
                          '${Endtime!.hour.toString()}:${Endtime!.minute.toString()}',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _continueEnabled ? () => debugPrint('Continue') : null,
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                _continueEnabled ? Color.fromRGBO(0, 70, 120, 1) : Colors.grey,
              ),
              minimumSize: MaterialStateProperty.all<Size>(
                // width and height of button
                const Size(240, 45),
              ),
            ),
            child: const Text(
              'Continue',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(int index, String label) {
    return ElevatedButton(
      onPressed: () => _onButtonPressed(index),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          _selectedIndex == index
              //? const Color.fromARGB(255, 7, 35, 196)
              ? const Color.fromRGBO(4, 29, 85, 1)
              // rgb(226 246 254 / var(--tw-bg-opacity));
              // : const Color.fromARGB(255, 190, 217, 239),
              : const Color.fromRGBO(226, 246, 254, 1),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        minimumSize: MaterialStateProperty.all<Size>(
          // width and height of button
          const Size(200, 70),
        ),
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: _selectedIndex == index ? Colors.white : Colors.black, fontFamily: 'sanserif',fontWeight: FontWeight.w700),
      ),
    );
  }
}
//  Future<void> _selectTime(BuildContext context, bool isStartTime) async {
//     final TimeOfDay? pickedTime = await showTimePicker(
//       context: context,
//       initialTime: isStartTime ? _startTime : _endTime,
//     );

//     if (pickedTime != null) {
//       setState(() {
//         if (isStartTime) {
//           _startTime = pickedTime;
//         } else {
//           _endTime = pickedTime;
//         }
//       });
//     }
//   }
