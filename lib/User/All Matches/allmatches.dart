import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

class AllMatches extends StatefulWidget {
  const AllMatches({Key? key}) : super(key: key);

  @override
  State<AllMatches> createState() => _AllMatchesState();
}

class _AllMatchesState extends State<AllMatches> {
  List<String> items = <String>[
    'Abraham Smith ',
    'black',
    'white',
    'orange',
  ];
  String dropdownValue = 'Abraham Smith ';
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/homepage_logo.png'),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'All Matches',
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
                Container(
                  width: 341.w,
                  height: 55.h,
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
                  height: 360.h,
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
                                    'Team 1 players',
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
                            SizedBox(
                              height: 5.h,
                            ),
                            Container(
                              width: 311.w,
                              height: 64.h,
                              child: Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/smith_icon.png',
                                      width: 48.w,
                                      height: 48.h,
                                    ),
                                    Container(
                                      width: 230.w,
                                      padding: EdgeInsets.only(left: 10.w),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff333333)),
                                          underline: null,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownValue = newValue!;
                                            });
                                          },
                                          value: dropdownValue,
                                          items: items
                                              .map<DropdownMenuItem<String>>(
                                            (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            },
                                          ).toList(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                  color: Color(0xffE9E9E9),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Row(
                                children: [
                                  Text(
                                    'Team 2 players',
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
                            SizedBox(
                              height: 5.h,
                            ),
                            Container(
                              width: 311.w,
                              height: 64.h,
                              child: Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/smith_icon.png',
                                      width: 48.w,
                                      height: 48.h,
                                    ),
                                    Container(
                                      width: 230.w,
                                      padding: EdgeInsets.only(left: 10.w),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff333333)),
                                          underline: null,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownValue = newValue!;
                                            });
                                          },
                                          value: dropdownValue,
                                          items: items
                                              .map<DropdownMenuItem<String>>(
                                            (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            },
                                          ).toList(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                  color: Color(0xffE9E9E9),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                Container(
                  // padding: EdgeInsets.only(left: 16.w,right: 23.w),
                  width: 343.w,
                  height: 360.h,
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
                                    'Team 1 players',
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
                            SizedBox(
                              height: 5.h,
                            ),
                            Container(
                              width: 311.w,
                              height: 64.h,
                              child: Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/smith_icon.png',
                                      width: 48.w,
                                      height: 48.h,
                                    ),
                                    Container(
                                      width: 230.w,
                                      padding: EdgeInsets.only(left: 10.w),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff333333)),
                                          underline: null,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownValue = newValue!;
                                            });
                                          },
                                          value: dropdownValue,
                                          items: items
                                              .map<DropdownMenuItem<String>>(
                                            (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            },
                                          ).toList(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                  color: Color(0xffE9E9E9),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10.w),
                              child: Row(
                                children: [
                                  Text(
                                    'Team 2 players',
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
                            SizedBox(
                              height: 5.h,
                            ),
                            Container(
                              width: 311.w,
                              height: 64.h,
                              child: Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/smith_icon.png',
                                      width: 48.w,
                                      height: 48.h,
                                    ),
                                    Container(
                                      width: 230.w,
                                      padding: EdgeInsets.only(left: 10.w),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<String>(
                                          style: TextStyle(
                                              fontFamily: 'Hannari',
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff333333)),
                                          underline: null,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropdownValue = newValue!;
                                            });
                                          },
                                          value: dropdownValue,
                                          items: items
                                              .map<DropdownMenuItem<String>>(
                                            (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            },
                                          ).toList(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                  color: Color(0xffE9E9E9),
                                ),
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
