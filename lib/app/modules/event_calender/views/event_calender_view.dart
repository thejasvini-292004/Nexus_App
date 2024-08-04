import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/app/components/appBar.dart';
import 'package:my_first_app/app/components/drawer.dart';
import 'package:my_first_app/app/constants/colors.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/event_calender_controller.dart';

class EventCalenderView extends GetView<EventCalenderController> {
  EventCalenderView({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: MyAppBar(scaffoldKey: _scaffoldKey),
      drawer: MyDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Icon(
                  Icons.event_available,
                  color: AppColors.darkBlueColor,
                  size: 35,
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    'Event Calendar: ',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.josefinSans(
                      fontSize: 30,
                      color: AppColors.darkBlueColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Obx(() {
                return DropdownButton<int>(
                  value: controller.selectedYear.value,
                  items: controller.years.map((int year) {
                    return DropdownMenuItem<int>(
                      value: year,
                      child: Text(year.toString()),
                    );
                  }).toList(),
                  onChanged: (int? newValue) {
                    controller.updateYear(newValue!);
                  },
                );
              }),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Calendar
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8.0,
                            offset: Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Obx(() {
                        return TableCalendar(
                          firstDay: DateTime(2000),
                          lastDay: DateTime(2100),
                          focusedDay: controller.focusedDay.value,
                          selectedDayPredicate: (day) {
                            return isSameDay(
                                controller.selectedDay.value, day);
                          },
                          onDaySelected: (selectedDay, focusedDay) {
                            controller.selectedDay.value = selectedDay;
                            controller.focusedDay.value = focusedDay;
                          },
                          calendarFormat: CalendarFormat.month,
                          headerStyle: HeaderStyle(
                            formatButtonVisible: false,
                            titleCentered: true,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          calendarStyle: CalendarStyle(
                            outsideDaysVisible: false,
                          ),
                          daysOfWeekStyle: DaysOfWeekStyle(
                            weekendStyle: TextStyle(color: Colors.black54),
                          ),
                        );
                      }),
                    ),
                    // Reminders Header
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Reminders',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //Reminders List
                    Container(
                      height: 200,
                      child: Obx(() {
                        return ListView.builder(
                          itemCount: controller.reminders.length,
                          itemBuilder: (context, index) {
                            final reminder = controller.reminders[index];
                            return Card(
                              child: ListTile(
                                title: Text(reminder['reminder']!),
                                subtitle: Text(reminder['date']!),
                                onTap: () {
                                  // Scroll the calendar to the selected reminder's date
                                  DateTime reminderDate =
                                  DateTime.parse(reminder['date']!);
                                  controller.selectedDay.value = reminderDate;
                                  controller.focusedDay.value = reminderDate;
                                },
                              ),
                            );
                          },
                        );
                      }),
                    ),

                  ],
                ),

              ),

            ),
          ),
        ],
      ),
    );
  }
}
