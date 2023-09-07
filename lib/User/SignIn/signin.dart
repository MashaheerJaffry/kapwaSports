import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:kapwa/User/BottomNavigationBar/bottomnavigationbar.dart';
import 'package:kapwa/User/Forget%20Password/forgetpassword.dart';
import 'package:kapwa/User/SignUp/signup.dart';
import 'package:kapwa/User/welcome.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool passwordObscured = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xffF5F5F5),
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .06,
                ),
                GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          const Icon(
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
                        MaterialPageRoute(
                            builder: (context) => const Welcome()),
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
                      'Sign In',
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff1E4798),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextFormField(
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    style: TextStyle(
                      fontFamily: 'Hannari',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        margin: const EdgeInsets.all(4),
                        child: Image.asset('assets/images/user_icon.png'),
                        decoration: BoxDecoration(
                            color: const Color(0xff1E4799),
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                      labelText: '    Email',
                      hintStyle: TextStyle(
                        fontFamily: 'Hannari',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: const Color(0xff000000),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: TextFormField(
                    style: TextStyle(
                      fontFamily: 'Hannari',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    obscureText: passwordObscured,
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        margin: const EdgeInsets.all(4),
                        child: Image.asset('assets/images/lock_icon.png'),
                        decoration: BoxDecoration(
                            color: const Color(0xff1E4799),
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                      labelText: '   Password',
                      hintStyle: TextStyle(
                        fontFamily: 'Hannari',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: const Color(0xff000000),
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
                          color: const Color(0xff1E4799),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.only(right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffFF1816),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Within the `FirstRoute` widget
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgetPassword()),
                      );
                    }),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                GestureDetector(
                    child: Container(
                      height: 40.h,
                      width: 284.w,
                      decoration: BoxDecoration(
                        color: const Color(0xff1E4799),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign in',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffFFFFFF),
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const bottomNavigationBar()),
                        );
                      }
                    }),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Or sign in with',
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff505050),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/google_icon.png'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .05,
                    ),
                    Image.asset('assets/images/fb_icon.png'),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account ? ',
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff868889),
                      ),
                    ),
                    GestureDetector(
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontFamily: 'Hannari',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xffFF1816),
                          ),
                        ),

                        // Within the `FirstRoute` widget
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()),
                          );
                        }),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
