import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kapwa/User/SignIn/signin.dart';
import 'package:kapwa/User/meassage/conversations.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
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
                  Image.asset('assets/images/success_icon.png'),
                  GestureDetector(
                      child: Icon(Icons.add),
                      // Within the `FirstRoute` widget
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Conversations()),
                        );
                      }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .03,
                  ),
                  Text(
                    'Password Changed!',
                    style: TextStyle(
                      fontFamily: 'Hannari',
                      fontWeight: FontWeight.w700,
                      fontSize: 26.sp,
                      color: Color(0xff1E232C),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Text(
                    'Your password has been changed ',
                    style: TextStyle(
                      fontFamily: 'Hannari',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff8391A1),
                    ),
                  ),
                  Text(
                    'successfully.',
                    style: TextStyle(
                      fontFamily: 'Hannari',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff8391A1),
                    ),
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
                              'Back to Login',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 22.sp,
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
