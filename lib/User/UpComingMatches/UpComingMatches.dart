import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class UpcomingMatches extends StatefulWidget {
  const UpcomingMatches({Key? key}) : super(key: key);

  @override
  State<UpcomingMatches> createState() => _UpcomingMatchesState();
}

class _UpcomingMatchesState extends State<UpcomingMatches> {
  // Calendar _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffF5F5F5),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/homepage_logo.png'),
                    // SizedBox(
                    //   width: 40.0,
                    // ),
                    Text(
                      'Upcoming Matches\nOverview',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        color: Color(0xff1E4799),
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 11.h,
                ),
                TableCalendar(
                  // rangeSelectionMode: RangeSelectionMode.toggledOn,
                  currentDay: DateTime.now(),
                  calendarFormat: CalendarFormat.week,
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      color: Color(0xff1E4799),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    // markerSize: 60.0,
                    // rangeHighlightColor: Color(0xff1E4799),
                    // markerDecoration: BoxDecoration(color: Color(0xff1E4799)),
                    todayTextStyle: TextStyle(
                        // backgroundColor: Color(0xff1E4799),
                        fontWeight: FontWeight.w600,
                        // fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                        color: Colors.white),
                    selectedTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                    weekendTextStyle: TextStyle(
                      // color: Colors.red,
                      fontSize: 18.0,
                    ),
                  ),
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  // initialCalendarFormat: CalendarFormat.week,
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  // calendarController: _calendarController,
                  firstDay: DateTime.now(),
                  lastDay: DateTime.utc(2024, 04, 7),
                  focusedDay: DateTime.now(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Upcoming',
                        style: TextStyle(
                            fontFamily: 'Hannari',
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            color: Color(0xff1E4798)),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '1\nMon',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Hannari',
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            color: Color(0xff333333)),
                      ),
                      Container(
                        width: 282,
                        height: 150.0,
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(16.0)),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 3.0,
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' NBA Atlantic',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.sp,
                                      color: Color(0xff333333)),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/loc.png',
                                      scale: 1.5,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Dubai, Dubai Marina, School Name\n2711',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Color(0xff858484)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '07 : 00 - 08:00',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Color(0xff333333)),
                                    ),
                                  ],
                                ),
                                Divider(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '1\nMon',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Hannari',
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            color: Color(0xff333333)),
                      ),
                      Container(
                        width: 282,
                        height: 150.0,
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(16.0)),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 3.0,
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' NBA Atlantic',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.sp,
                                      color: Color(0xff333333)),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/loc.png',
                                      scale: 1.5,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Dubai, Dubai Marina, School Name\n2711',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Color(0xff858484)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '07 : 00 - 08:00',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Color(0xff333333)),
                                    ),
                                  ],
                                ),
                                Divider(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '1\nMon',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Hannari',
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            color: Color(0xff333333)),
                      ),
                      Container(
                        width: 282,
                        height: 150.0,
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(16.0)),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 3.0,
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ' NBA Atlantic',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16.sp,
                                      color: Color(0xff333333)),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/loc.png',
                                      scale: 1.5,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Dubai, Dubai Marina, School Name\n2711',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Color(0xff858484)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '07 : 00 - 08:00',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Color(0xff333333)),
                                    ),
                                  ],
                                ),
                                Divider(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
