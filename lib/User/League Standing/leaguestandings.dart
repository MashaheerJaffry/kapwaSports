import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

class LeagueStandings extends StatefulWidget {
  const LeagueStandings({Key? key}) : super(key: key);

  @override
  State<LeagueStandings> createState() => _LeagueStandingsState();
}

class _LeagueStandingsState extends State<LeagueStandings> {
  List<String> items = <String>[
    'Regular Session',
    'black',
    'white',
    'orange',
  ];
  String dropdownValue = 'Regular Session';
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
                  children: [
                    Image.asset('assets/images/homepage_logo.png'),
                    Text(
                      'League Standing',
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        fontWeight: FontWeight.w700,
                        fontSize: 28.sp,
                        color: Color(0xff1E4799),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 24.w),
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      width: 129.w,
                      height: 36.h,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          style: TextStyle(
                            fontFamily: 'Hannari',
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff2F2F2F),
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          value: dropdownValue,
                          items: items.map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(
                            color: Color(0xffAAAAAA),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 11.h,
                ),
                Container(
                  width: 345.w,
                  height: 40.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(left: 13.w, right: 10.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'NBA Atlantic',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xffFF1816),
                            ),
                          ),
                          SizedBox(
                            width: 85.w,
                          ),
                          Text(
                            'W',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xffFF1816),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            'L',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xffFF1816),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            'PCT',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xffFF1816),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            'Hons',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xffFF1816),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 345.w,
                  height: 65.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 9.w, right: 10.w, top: 11.h, bottom: 11.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/league_icon.png',
                            width: 30.w,
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'INTERMEDIATE B',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10.sp,
                                  color: Color(0xff333333),
                                ),
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              Text(
                                'Abu Dhabi city',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8.sp,
                                  color: Color(0xff787878),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            '49',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '22',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '690',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '26-1',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  width: 345.w,
                  height: 65.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 9.w, right: 10.w, top: 11.h, bottom: 11.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/league_icon.png',
                            width: 30.w,
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'INTERMEDIATE B',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10.sp,
                                  color: Color(0xff333333),
                                ),
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              Text(
                                'Abu Dhabi city',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8.sp,
                                  color: Color(0xff787878),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            '49',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '22',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '690',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '26-1',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  width: 345.w,
                  height: 65.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 9.w, right: 10.w, top: 11.h, bottom: 11.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/league_icon.png',
                            width: 30.w,
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'INTERMEDIATE B',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10.sp,
                                  color: Color(0xff333333),
                                ),
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              Text(
                                'Abu Dhabi city',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8.sp,
                                  color: Color(0xff787878),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            '49',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '22',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '690',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '26-1',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  width: 345.w,
                  height: 65.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 9.w, right: 10.w, top: 11.h, bottom: 11.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/league_icon.png',
                            width: 30.w,
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'INTERMEDIATE B',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10.sp,
                                  color: Color(0xff333333),
                                ),
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              Text(
                                'Abu Dhabi city',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8.sp,
                                  color: Color(0xff787878),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            '49',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '22',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '690',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '26-1',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  width: 345.w,
                  height: 65.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 9.w, right: 10.w, top: 11.h, bottom: 11.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/league_icon.png',
                            width: 30.w,
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'INTERMEDIATE B',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10.sp,
                                  color: Color(0xff333333),
                                ),
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              Text(
                                'Abu Dhabi city',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8.sp,
                                  color: Color(0xff787878),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            '49',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '22',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '690',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '26-1',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  width: 345.w,
                  height: 65.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 9.w, right: 10.w, top: 11.h, bottom: 11.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/league_icon.png',
                            width: 30.w,
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'INTERMEDIATE B',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10.sp,
                                  color: Color(0xff333333),
                                ),
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              Text(
                                'Abu Dhabi city',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8.sp,
                                  color: Color(0xff787878),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            '49',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '22',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '690',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '26-1',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  width: 345.w,
                  height: 65.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 9.w, right: 10.w, top: 11.h, bottom: 11.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/league_icon.png',
                            width: 30.w,
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'INTERMEDIATE B',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10.sp,
                                  color: Color(0xff333333),
                                ),
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              Text(
                                'Abu Dhabi city',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8.sp,
                                  color: Color(0xff787878),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            '49',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '22',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '690',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '26-1',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  width: 345.w,
                  height: 65.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xffFFFFFF),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 9.w, right: 10.w, top: 11.h, bottom: 11.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/league_icon.png',
                            width: 30.w,
                            height: 30.h,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'INTERMEDIATE B',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10.sp,
                                  color: Color(0xff333333),
                                ),
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              Text(
                                'Abu Dhabi city',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8.sp,
                                  color: Color(0xff787878),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            '49',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '22',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '690',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                          SizedBox(
                            width: 17.w,
                          ),
                          Text(
                            '26-1',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                              color: Color(0xff333333),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
