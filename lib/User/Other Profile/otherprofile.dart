import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

class OtherProfile extends StatefulWidget {
  const OtherProfile({Key? key}) : super(key: key);

  @override
  State<OtherProfile> createState() => _OtherProfileState();
}

class _OtherProfileState extends State<OtherProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xffF5F5F5),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/homepage_logo.png'),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff1E4799),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.94,
                  height: 170,
                  // height: 175.h,
                  decoration: BoxDecoration(
                      color: const Color(0xff1E4799),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/profileIcon.png',
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 30.0, right: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Jerry Zhang',
                                style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: 'Position:',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700,
                                      color:
                                          Colors.white), // default text style
                                  children: [
                                    TextSpan(
                                      text: ' Point Guard ',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: 'Shoots:',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700,
                                      color:
                                          Colors.white), // default text style
                                  children: [
                                    TextSpan(
                                      text: ' Right ',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: 'Skills:',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700,
                                      color:
                                          Colors.white), // default text style
                                  children: [
                                    TextSpan(
                                      text: ' Shooting,Dribbling ',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: 'Age:',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700,
                                      color:
                                          Colors.white), // default text style
                                  children: [
                                    TextSpan(
                                      text: ' 21 ',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: 71.h,
                  // height: 175.h,
                  decoration: BoxDecoration(
                      color: const Color(0xff1E4799),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Center(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'Awards:',
                            style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white), // default text style
                            children: [
                              TextSpan(
                                text: ' Hustle Award, Sharp Shooter Award ',
                                style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text.rich(
                              TextSpan(
                                text: 'Sponsors:',
                                style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white), // default text style
                                children: [
                                  TextSpan(
                                    text: ' DraftKings, PepsiCo ',
                                    style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text.rich(
                              TextSpan(
                                text: 'Team:',
                                style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white), // default text style
                                children: [
                                  TextSpan(
                                    text: ' Denver Nuggets ',
                                    style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
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
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Statistics',
                        style: TextStyle(
                          fontFamily: 'Hannari',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff1E4799),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 99.w,
                      height: 62.h,
                      // height: 175.h,
                      decoration: BoxDecoration(
                          color: const Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Total Matches',
                              style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              '10',
                              style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 99.w,
                          height: 62.h,
                          // height: 175.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff1E4799),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Points',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text(
                                  '50.6',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 99.w,
                          height: 62.h,
                          // height: 175.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff1E4799),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Rebounds',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text(
                                  '13.9',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 99.w,
                          height: 62.h,
                          // height: 175.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff1E4799),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Assists',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text(
                                  '9.3',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 99.w,
                          height: 62.h,
                          // height: 175.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff1E4799),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'FG%',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text(
                                  '51',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 99.w,
                          height: 62.h,
                          // height: 175.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff1E4799),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'FT%',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text(
                                  '65.6',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 99.w,
                          height: 62.h,
                          // height: 175.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff1E4799),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'FGM-FGA',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text(
                                  '16.3',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                    child: Container(
                      height: 40.h,
                      width: 284.w,
                      decoration: BoxDecoration(
                        color: Color(0xff1E4799),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFFFFFF),
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SignIn()),
                      // );
                    }),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
