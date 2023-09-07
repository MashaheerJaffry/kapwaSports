import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:kapwa/User/Player%20Stats/playerstats.dart';

class TopPlayers extends StatefulWidget {
  const TopPlayers({Key? key}) : super(key: key);

  @override
  State<TopPlayers> createState() => _TopPlayersState();
}

class _TopPlayersState extends State<TopPlayers> {
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
                      'Top Players',
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1E4799),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 33.h,
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
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffE99A25),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(color: Color(0xff1E4799)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff1E4799)),
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        size: 24.h,
                        color: Color(0xff414141),
                      ),
                      hintText: '   Search...',
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => PlayerStats()));
                  },
                  child: Container(
                    width: 346.w,
                    height: 76.h,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                      color: Color(0xff1E4799),
                      child: Container(
                          padding: EdgeInsets.only(left: 25.w, right: 25.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/ivan_icon.png',
                                      width: 40.w,
                                      height: 40.h,
                                    ),
                                    SizedBox(
                                      width: 21.w,
                                    ),
                                    Text(
                                      'Ivan Dreagan ',
                                      style: TextStyle(
                                        fontFamily: 'Hannari',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text(
                                      '4500pt',
                                      style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.sp,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Container(
                  width: 346.w,
                  height: 76.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xff1E4799),
                    child: Container(
                        padding: EdgeInsets.only(left: 25.w, right: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/ivan_icon.png',
                                    width: 40.w,
                                    height: 40.h,
                                  ),
                                  SizedBox(
                                    width: 21.w,
                                  ),
                                  Text(
                                    'Ivan Dreagan ',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    '4500pt',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Container(
                  width: 346.w,
                  height: 76.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xff1E4799),
                    child: Container(
                        padding: EdgeInsets.only(left: 25.w, right: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/ivan_icon.png',
                                    width: 40.w,
                                    height: 40.h,
                                  ),
                                  SizedBox(
                                    width: 21.w,
                                  ),
                                  Text(
                                    'Ivan Dreagan ',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    '4500pt',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Container(
                  width: 346.w,
                  height: 76.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xff1E4799),
                    child: Container(
                        padding: EdgeInsets.only(left: 25.w, right: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/ivan_icon.png',
                                    width: 40.w,
                                    height: 40.h,
                                  ),
                                  SizedBox(
                                    width: 21.w,
                                  ),
                                  Text(
                                    'Ivan Dreagan ',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    '4500pt',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Container(
                  width: 346.w,
                  height: 76.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xff1E4799),
                    child: Container(
                        padding: EdgeInsets.only(left: 25.w, right: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/ivan_icon.png',
                                    width: 40.w,
                                    height: 40.h,
                                  ),
                                  SizedBox(
                                    width: 21.w,
                                  ),
                                  Text(
                                    'Ivan Dreagan ',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    '4500pt',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Container(
                  width: 346.w,
                  height: 76.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xff1E4799),
                    child: Container(
                        padding: EdgeInsets.only(left: 25.w, right: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/ivan_icon.png',
                                    width: 40.w,
                                    height: 40.h,
                                  ),
                                  SizedBox(
                                    width: 21.w,
                                  ),
                                  Text(
                                    'Ivan Dreagan ',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    '4500pt',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
