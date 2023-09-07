import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:kapwa/User/Forget%20Password/success.dart';
import 'package:kapwa/User/SignIn/signin.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  bool passwordObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xffF5F5F5),
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .06,
              ),
              GestureDetector(
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Color(0xffFF1816),
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
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/kapwa_icon.png'),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forget Password',
                    style: TextStyle(
                      fontFamily: 'Hannari',
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff1E4798),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: TextField(
                  obscureText: passwordObscured,
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      margin: const EdgeInsets.all(4),
                      child: Image.asset('assets/images/lock_icon.png'),
                      decoration: BoxDecoration(
                          color: const Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(8.r)),
                    ),
                    labelText: '   New Password',
                    hintStyle: TextStyle(
                      fontFamily: 'Hannari',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: Color(0xff000000),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordObscured = !passwordObscured;
                        });
                      },
                      icon: Icon(
                        passwordObscured
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: Color(0xff1E4799),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: TextField(
                  obscureText: passwordObscured,
                  decoration: InputDecoration(
                    prefixIcon: Container(
                      margin: const EdgeInsets.all(4),
                      child: Image.asset('assets/images/lock_icon.png'),
                      decoration: BoxDecoration(
                          color: const Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(8.r)),
                    ),
                    labelText: '   Confirm Password',
                    hintStyle: TextStyle(
                      fontFamily: 'Hannari',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: Color(0xff000000),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordObscured = !passwordObscured;
                        });
                      },
                      icon: Icon(
                        passwordObscured
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: Color(0xff1E4799),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
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
                          'Reset Password',
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
                      MaterialPageRoute(builder: (context) => Success()),
                    );
                  }),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
