import 'package:flutter/material.dart';

class DateTimePickers extends StatefulWidget {
  const DateTimePickers({super.key});

  @override
  State<DateTimePickers> createState() => _DateTimePickersState();
}

class _DateTimePickersState extends State<DateTimePickers> {
  DateTime? selectedDateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Picker"),
        backgroundColor: Colors.amber.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedDateTime != null
                  ? selectedDateTime.toString()
                  : 'This is your selected date and time',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => DatePickerDialog(
                    firstDate: DateTime.now().subtract(Duration(days: 30)),
                    lastDate: DateTime.now(),
                  ),
                ).then((value) {
                  setState(() {
                    if (value != null) {
                      if (selectedDateTime == null) {
                        selectedDateTime = value;
                      } else {
                        selectedDateTime = selectedDateTime!.copyWith(
                          year: value.year,
                          month: value.month,
                          day: value.day,
                        );
                      }
                    }
                  });
                });
              },
              child: Text("Pick a date"),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog<TimeOfDay>(
                  context: context,
                  builder: (context) =>
                      TimePickerDialog(initialTime: TimeOfDay.now()),
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      if (selectedDateTime != null) {
                        selectedDateTime = selectedDateTime!.copyWith(
                          hour: value.hour,
                          minute: value.minute,
                        );
                      } else {
                        selectedDateTime = DateTime.now().copyWith(
                          hour: value.hour,
                          minute: value.minute,
                        );
                      }
                    });
                  }
                });
              },
              child: Text("Pick a time"),
            ),
          ],
        ),
      ),
    );
  }
}
