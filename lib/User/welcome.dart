import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:kapwa/User/SignIn/signin.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffF5F5F5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/kapwalogo.png',
                    height: 218.h,
                    width: 218.w,
                  ),
                  Text(
                    'KAPWA SPORTS',
                    style: TextStyle(
                      fontFamily: 'Hannari',
                      fontWeight: FontWeight.w400,
                      fontSize: 33.sp,
                      color: Color(0xff4F504E),
                    ),
                  ),
                  // Text(
                  //   'KAPWA SPORTS',
                  //   style: TextStyle(fontFamily: 'Hannari',
                  //     // fontFamily: 'Hannari',
                  //     fontWeight: FontWeight.w400,
                  //     fontSize: 33.sp,
                  //     color: Color(0xff4F504E),
                  //   ),
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, ',
                    style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff212220)),
                  ),
                  Text(
                    'consectetur adipiscing elit',
                    style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff212220)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .043,
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
                              'Get Started',
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
// Within the `FirstRoute` widget
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
