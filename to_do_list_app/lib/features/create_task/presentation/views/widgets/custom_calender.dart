import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:intl/intl.dart';

class CustomCalender extends StatefulWidget {
  const CustomCalender({super.key});

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TableCalendar(
        daysOfWeekHeight: 40,
        calendarStyle: const CalendarStyle(
          todayDecoration: BoxDecoration(
            color: Colors.transparent,
          ),
          tablePadding: EdgeInsets.zero,
          weekendTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        calendarFormat: CalendarFormat.month,
        firstDay: DateTime(1990),
        lastDay: DateTime(2050),
        focusedDay: focusedDay,
        shouldFillViewport: true,
        headerVisible: true,
        headerStyle: const HeaderStyle(
            leftChevronVisible: false,
            formatButtonVisible: false,
            rightChevronVisible: false),
        startingDayOfWeek: StartingDayOfWeek.monday,
        onDaySelected: (selectDay, focusDay) {
          setState(
            () {
              selectedDay = selectDay;
              focusedDay = focusDay;
            },
          );
        },
        selectedDayPredicate: (day) => isSameDay(selectedDay, day),
        calendarBuilders: CalendarBuilders(
          headerTitleBuilder: (context, day) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(day.year.toString()),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          DateFormat.MMMM().format(day),
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              focusedDay = DateTime(focusedDay.year,
                                  focusedDay.month - 1, focusedDay.day);
                            });
                          },
                          child: const Icon(Icons.arrow_back_ios),
                        ),
                        const SizedBox(
                          width: 26,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              focusedDay = DateTime(focusedDay.year,
                                  focusedDay.month + 1, focusedDay.day);
                            });
                          },
                          child: const Icon(Icons.arrow_forward_ios),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            );
          },
          dowBuilder: (context, day) {
            // Define a list of custom day of the week labels
            final customDayOfWeekLabels = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];

            final dayIndex =
                day.weekday - 1; // Subtract 1 to make Sunday 0-based

            return Center(
              child: Text(
                customDayOfWeekLabels[dayIndex],
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  // Customize the style as needed
                ),
              ),
            );
          },
          selectedBuilder: (context, date, events) {
            return Container(
              margin: const EdgeInsets.all(6.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: kSpecialColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                date.day.toString(),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
