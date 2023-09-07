import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

class PlayerStats extends StatefulWidget {
  const PlayerStats({Key? key}) : super(key: key);

  @override
  State<PlayerStats> createState() => _PlayerStatsState();
}

class _PlayerStatsState extends State<PlayerStats> {
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
                SizedBox(
                  height: 36.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 40.w),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: Color(0xffFF1816),
                        iconSize: 23,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                Stack(
                  children: [
                    Container(
                      width: 342.w,
                      height: 381.h,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.r),
                        ),
                        color: Color(0xff1E4799),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30.r),
                              child: Image.asset(
                                'assets/images/varun_pic.png',
                                width: 360.w,
                                height: 217.h,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 12.w, right: 17.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset('assets/images/abraham_icon.png'),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    '|',
                                    style: TextStyle(
                                        fontSize: 30.sp,
                                        color: Color(0xffFFFFFF)),
                                  ),
                                  SizedBox(
                                    width: 11.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Abraham Smith ',
                                        style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                              'assets/images/abraham_flag.png'),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Text(
                                            'Abu Dhabi, Abu Dhabi city',
                                            style: TextStyle(
                                                fontFamily: 'Hannari',
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 14.w,
                                  ),
                                  Container(
                                    height: 38.h,
                                    width: 38.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(38.r)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4.9',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            color: Color(0xff1E4799),
                                            fontWeight: FontWeight.w800,
                                            fontSize: 17.sp,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 11.h,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 30.w),
                              child: Row(
                                children: [
                                  Text(
                                    'Awards: ',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Hustle Award, Sharp Shooter Award',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 30.w, right: 17.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          'Leagues: ',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'NBA Atlantic',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          'Teams: ',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'Denever Nuggets',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
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
                              height: 4.h,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 30.w, right: 17.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          'Trainer: ',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'John Smith',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          'Sponsors: ',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'DraftKings, PepsiCo',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
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
                              height: 4.h,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 30.w, right: 17.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          'total Wins: ',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          '10',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          'Total Loss: ',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          '5',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          'Ratio: ',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          '2:1',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500,
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
                    Positioned(
                      child: Image.asset('assets/images/position_icon.png'),
                      top: 20.h,
                      left: 255.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 24.w, right: 23.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100.h,
                        width: 106.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.r),
                          ),
                          child: Column(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 8.w),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Age',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffB1B2B5),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 12.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          '14',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w800,
                                              fontSize: 28.sp,
                                              color: Color(0xff333333)),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100.h,
                        width: 106.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.r),
                          ),
                          child: Column(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 8.w),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Height',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffB1B2B5),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 12.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          '1.93',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w800,
                                              fontSize: 28.sp,
                                              color: Color(0xff333333)),
                                        ),
                                        Text(
                                          'cm',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.sp,
                                              color: Color(0xff333333)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100.h,
                        width: 106.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.r),
                          ),
                          child: Column(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 8.w),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Sessions',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffB1B2B5),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 12.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          '10',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 24.sp,
                                            color: Color(0xffDF303B),
                                          ),
                                        ),
                                        Text(
                                          '/',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 24.sp,
                                            color: Color(0xffB1B2B5),
                                          ),
                                        ),
                                        Text(
                                          '12',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontWeight: FontWeight.w800,
                                            fontSize: 28.sp,
                                            color: Color(0xff73AF00),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 24.w, right: 23.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100.h,
                        width: 106.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.r),
                          ),
                          child: Column(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 8.w),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Points',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffB1B2B5),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 12.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          '14',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w800,
                                              fontSize: 28.sp,
                                              color: Color(0xff333333)),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100.h,
                        width: 106.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.r),
                          ),
                          child: Column(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 8.w),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Rebounds',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffB1B2B5),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 12.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          '1.93',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w800,
                                              fontSize: 28.sp,
                                              color: Color(0xff333333)),
                                        ),
                                        Text(
                                          'cm',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.sp,
                                              color: Color(0xff333333)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100.h,
                        width: 106.w,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.r),
                          ),
                          child: Column(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 8.w),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Assits',
                                          style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffB1B2B5),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 12.w),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          '9.3',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w800,
                                              fontSize: 28.sp,
                                              color: Color(0xff333333)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .25,
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 343.w,
              height: 160.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 16.w, top: 20.h),
                    child: Row(
                      children: [
                        Text(
                          'DICIPLINE',
                          style: TextStyle(
                            fontFamily: 'Hannari',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffB1B2B5),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 17.w, right: 17.w),
                    child: Divider(
                      height: 10,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 17.w, right: 17.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '4',
                                  style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 28.sp,
                                    color: Color(0xff333333),
                                  ),
                                ),
                                Image.asset('assets/images/yellow_card.png'),
                              ],
                            ),
                            Text(
                              'Yellow',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff858484),
                              ),
                            ),
                            Text(
                              'cards',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff858484),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 13.w,
                        ),
                        Text(
                          '|',
                          style: TextStyle(
                              fontSize: 28.sp, color: Color(0xffD5D5D5)),
                        ),
                        SizedBox(
                          width: 13.w,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 28.sp,
                                    color: Color(0xff333333),
                                  ),
                                ),
                                Image.asset('assets/images/red_card.png'),
                              ],
                            ),
                            Text(
                              'Red',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff858484),
                              ),
                            ),
                            Text(
                              'cards',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff858484),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 13.w,
                        ),
                        Text(
                          '|',
                          style: TextStyle(
                              fontSize: 28.sp, color: Color(0xffD5D5D5)),
                        ),
                        SizedBox(
                          width: 13.w,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '8',
                                  style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 28.sp,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Fouls',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff858484),
                              ),
                            ),
                            Text(
                              'won',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff858484),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 13.w,
                        ),
                        Text(
                          '|',
                          style: TextStyle(
                              fontSize: 28.sp, color: Color(0xffD5D5D5)),
                        ),
                        SizedBox(
                          width: 13.w,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '12',
                                  style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 28.sp,
                                    color: Color(0xff333333),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Fouls',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff858484),
                              ),
                            ),
                            Text(
                              'conceded',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff858484),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
