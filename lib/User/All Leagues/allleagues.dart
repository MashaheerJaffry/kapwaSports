import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

class AllLeagues extends StatefulWidget {
  const AllLeagues({Key? key}) : super(key: key);

  @override
  State<AllLeagues> createState() => _AllLeaguesState();
}

class _AllLeaguesState extends State<AllLeagues> {
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
                      'All Leagues',
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        color: Color(0xff1E4799),
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    // SizedBox(
                    //   width: 20.w,
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (_) => LeagueStandings()));
                    //   },
                    //   child: Container(
                    //     height: 50.h,
                    //     width: 110.w,
                    //     decoration: BoxDecoration(
                    //       color: Color(0xff1E4799),
                    //       borderRadius: BorderRadius.circular(20.r),
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Text(
                    //           'League Standing',
                    //           style: TextStyle(
                    //   fontFamily: 'Hannari',
                    //             fontSize: 12.sp,
                    //             fontWeight: FontWeight.w300,
                    //             color: Color(0xffFFFFFF),
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: 11.h,
                ),
                Container(
                  width: 341.w,
                  height: 60.h,
                  child: TextField(
                    style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffB0B0B0)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffE99A25),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: Colors.grey.shade200,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 24.h,
                        color: Color(0xff414141),
                      ),
                      hintText: '   Search',
                    ),
                  ),
                ),
                SizedBox(
                  height: 23.h,
                ),
                Container(
                  // padding: EdgeInsets.only(left: 16.w,right: 23.w),
                  width: 343.w,
                  height: 440.h,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xffFFFFFF),
                    child: Container(
                        padding: EdgeInsets.only(left: 15.w, right: 12.w),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 22.h,
                            ),
                            Container(
                              // padding: EdgeInsets.only(left: 10.w,right: 23.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/league_icon.png',
                                          width: 48.w,
                                          height: 48.h,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'NBA Atlantic',
                                              style: TextStyle(
                                                  fontFamily: 'Hannari',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14.sp,
                                                  color: Color(0xff333333)),
                                            ),
                                            SizedBox(
                                              height: 4.h,
                                            ),
                                            Text(
                                              'Abu Dhabi city',
                                              style: TextStyle(
                                                fontFamily: 'Hannari',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.sp,
                                                color: Color(0xff787878),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Season: 13',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff2F2F2F)),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          'T1 League',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12.sp,
                                              color: Color(0xff2F2F2F)),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.calendar_month_sharp,
                                  size: 20,
                                  color: Color(0xff1E4799),
                                ),
                                Text(
                                  '19/03/2023',
                                  style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2f2F2F),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Row(
                                children: [
                                  Text(
                                    'Selected Teams',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Color(0xff1E4799),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              width: 311.w,
                              height: 215.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                  color: Color(0xffE9E9E9),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 12.h, left: 21.w),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/denever_flag.png',
                                          width: 20.w,
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Text(
                                          'Denver Nuggets',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10.sp,
                                              color: Color(0xff333333)),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 12.h, left: 21.w),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/denever_flag.png',
                                          width: 20.w,
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Text(
                                          'Denver Nuggets',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10.sp,
                                              color: Color(0xff333333)),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 12.h, left: 21.w),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/denever_flag.png',
                                          width: 20.w,
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Text(
                                          'Denver Nuggets',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10.sp,
                                              color: Color(0xff333333)),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 12.h, left: 21.w),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/denever_flag.png',
                                          width: 20.w,
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Text(
                                          'Denver Nuggets',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10.sp,
                                              color: Color(0xff333333)),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 12.h, left: 21.w),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/denever_flag.png',
                                          width: 20.w,
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Text(
                                          'Denver Nuggets',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10.sp,
                                              color: Color(0xff333333)),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  // padding: EdgeInsets.only(left: 16.w,right: 23.w),
                  width: 343.w,
                  height: 440.h,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xffFFFFFF),
                    child: Container(
                        padding: EdgeInsets.only(left: 15.w, right: 12.w),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 22.h,
                            ),
                            Container(
                              // padding: EdgeInsets.only(left: 10.w,right: 23.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/league_icon.png',
                                          width: 48.w,
                                          height: 48.h,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'NBA Atlantic',
                                              style: TextStyle(
                                                  fontFamily: 'Hannari',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14.sp,
                                                  color: Color(0xff333333)),
                                            ),
                                            SizedBox(
                                              height: 4.h,
                                            ),
                                            Text(
                                              'Abu Dhabi city',
                                              style: TextStyle(
                                                fontFamily: 'Hannari',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.sp,
                                                color: Color(0xff787878),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          'Season: 13',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff2F2F2F)),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          'T1 League',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12.sp,
                                              color: Color(0xff2F2F2F)),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.calendar_month_sharp,
                                  size: 20,
                                  color: Color(0xff1E4799),
                                ),
                                Text(
                                  '19/03/2023',
                                  style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff2f2F2F),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Row(
                                children: [
                                  Text(
                                    'Selected Teams',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Color(0xff1E4799),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              width: 311.w,
                              height: 215.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                  color: Color(0xffE9E9E9),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 12.h, left: 21.w),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/denever_flag.png',
                                          width: 20.w,
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Text(
                                          'Denver Nuggets',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10.sp,
                                              color: Color(0xff333333)),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 12.h, left: 21.w),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/denever_flag.png',
                                          width: 20.w,
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Text(
                                          'Denver Nuggets',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10.sp,
                                              color: Color(0xff333333)),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 12.h, left: 21.w),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/denever_flag.png',
                                          width: 20.w,
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Text(
                                          'Denver Nuggets',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10.sp,
                                              color: Color(0xff333333)),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 12.h, left: 21.w),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/denever_flag.png',
                                          width: 20.w,
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Text(
                                          'Denver Nuggets',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10.sp,
                                              color: Color(0xff333333)),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.h,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(top: 12.h, left: 21.w),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/denever_flag.png',
                                          width: 20.w,
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Text(
                                          'Denver Nuggets',
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10.sp,
                                              color: Color(0xff333333)),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
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
