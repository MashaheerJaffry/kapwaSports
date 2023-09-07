import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

class TeamStats extends StatefulWidget {
  const TeamStats({Key? key}) : super(key: key);

  @override
  State<TeamStats> createState() => _TeamStatsState();
}

class _TeamStatsState extends State<TeamStats> {
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
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'Team Stats',
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        color: Color(0xff1E4799),
                        fontWeight: FontWeight.w700,
                        fontSize: 28.sp,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 100.h,
                  width: 345.w,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xff1E4799),
                    child: Container(
                      padding: EdgeInsets.only(left: 15.w, right: 12.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/denever_flag.png'),
                              SizedBox(
                                height: 6.h,
                              ),
                              Text(
                                'Denever Nuggets',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Team Stats',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                '30 - 0',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/los_flag.png'),
                              SizedBox(
                                height: 6.h,
                              ),
                              Text(
                                'Los Angeles Clipers',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 27.w, right: 23.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 52.h,
                        width: 76.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '36',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 27.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 63.h,
                        width: 171.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          color: Color(0xff1E4799),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Rebounds',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 52.h,
                        width: 76.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '36',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 27.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 27.w, right: 23.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 52.h,
                        width: 76.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '21',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 27.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 63.h,
                        width: 171.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          color: Color(0xff1E4799),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Assists',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 52.h,
                        width: 76.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '25',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 27.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 27.w, right: 23.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 52.h,
                        width: 76.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '7',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 27.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 63.h,
                        width: 171.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          color: Color(0xff1E4799),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Steals',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 52.h,
                        width: 76.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '2',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 27.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 27.w, right: 23.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 52.h,
                        width: 76.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '9',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 27.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 63.h,
                        width: 171.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          color: Color(0xff1E4799),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Turnovers',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 52.h,
                        width: 76.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '6',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 27.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 27.w, right: 23.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 52.h,
                        width: 76.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '18',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 27.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 63.h,
                        width: 171.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          color: Color(0xff1E4799),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Points',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 52.h,
                        width: 76.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '20',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 27.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 27.w, right: 23.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 52.h,
                        width: 76.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '8/15',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 27.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 63.h,
                        width: 171.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          color: Color(0xff1E4799),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Field Goal',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 52.h,
                        width: 76.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '9/15',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 27.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 27.w, right: 23.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 52.h,
                        width: 76.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '1/3',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 27.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 63.h,
                        width: 171.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          color: Color(0xff1E4799),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '3 Points',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 52.h,
                        width: 76.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '2/3',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 27.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
