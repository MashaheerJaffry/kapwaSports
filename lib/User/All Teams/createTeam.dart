import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateTeams extends StatefulWidget {
  const CreateTeams({Key? key}) : super(key: key);

  @override
  State<CreateTeams> createState() => _CreateTeamsState();
}

class _CreateTeamsState extends State<CreateTeams> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xffF5F5F5),
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/homepage_logo.png'),
                    Text(
                      'Create Teams',
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1E4799),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 343.w,
                  height: 600.h,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 23.h,
                        ),
                        Text(
                          'Create Team',
                          style: TextStyle(
                            fontFamily: 'Hannari',
                            fontWeight: FontWeight.w700,
                            fontSize: 24.sp,
                            color: Color(0xff1E4799),
                          ),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10.w, left: 10.w),
                          // margin: EdgeInsets.only(right: 7.w),
                          width: 311.w,
                          height: 60.h,
                          child: TextField(
                            style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffB0B0B0)),
                            decoration: InputDecoration(
                              filled: true,
                              hintMaxLines: 5,
                              fillColor: Colors.grey.shade200,
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
                              prefixIcon: Container(
                                child: Image.asset(
                                    'assets/images/createteam_icon.png'),
                              ),
                              hintText: 'Team Name',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10.w, left: 10.w),
                          // margin: EdgeInsets.only(right: 7.w),
                          width: 311.w,
                          height: 60.h,
                          child: TextField(
                            style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffB0B0B0)),
                            decoration: InputDecoration(
                              filled: true,
                              hintMaxLines: 5,
                              fillColor: Colors.grey.shade200,
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
                              prefixIcon: Container(
                                child: Image.asset(
                                    'assets/images/upload_logo.png'),
                              ),
                              hintText: 'Upload Images/Videos',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10.w, left: 10.w),
                          // margin: EdgeInsets.only(right: 7.w),
                          width: 311.w,
                          height: 60.h,
                          child: TextField(
                            style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffB0B0B0)),
                            decoration: InputDecoration(
                              filled: true,
                              hintMaxLines: 5,
                              fillColor: Colors.grey.shade200,
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
                              prefixIcon: Container(
                                child: Image.asset(
                                    'assets/images/location_logo.png'),
                              ),
                              hintText: 'Location',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 10.w, left: 10.w),
                              // margin: EdgeInsets.only(right: 7.w),
                              width: 155.w,
                              height: 60.h,
                              child: TextField(
                                style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffB0B0B0)),
                                decoration: InputDecoration(
                                  filled: true,
                                  hintMaxLines: 5,
                                  fillColor: Colors.grey.shade200,
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
                                  prefixIcon: Container(
                                    child: Image.asset(
                                        'assets/images/trainor_logo.png'),
                                  ),
                                  hintText: 'Coach',
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10.w, left: 10.w),
                              // margin: EdgeInsets.only(right: 7.w),
                              width: 155.w,
                              height: 60.h,
                              child: TextField(
                                style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffB0B0B0)),
                                decoration: InputDecoration(
                                  filled: true,
                                  hintMaxLines: 5,
                                  fillColor: Colors.grey.shade200,
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
                                  prefixIcon: Container(
                                    child: Image.asset(
                                        'assets/images/trainor_logo.png'),
                                  ),
                                  hintText: 'Trainer',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10.w, left: 10.w),
                          // margin: EdgeInsets.only(right: 7.w),
                          width: 311.w,
                          height: 60.h,
                          child: TextField(
                            style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffB0B0B0)),
                            decoration: InputDecoration(
                              filled: true,
                              hintMaxLines: 5,
                              fillColor: Colors.grey.shade200,
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
                              prefixIcon: Container(
                                child: Image.asset(
                                    'assets/images/sponsor_logo.png'),
                              ),
                              hintText: 'Sponsers',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10.w, left: 10.w),
                          // margin: EdgeInsets.only(right: 7.w),
                          width: 311.w,
                          height: 60.h,
                          child: TextField(
                            style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffB0B0B0)),
                            decoration: InputDecoration(
                              filled: true,
                              hintMaxLines: 5,
                              fillColor: Colors.grey.shade200,
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
                              prefixIcon: Container(
                                child: Image.asset(
                                    'assets/images/upload_logo.png'),
                              ),
                              hintText: 'Upload Images',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          height: 50.h,
                          width: 284.w,
                          decoration: BoxDecoration(
                            color: Color(0xff1E4799),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Create Team',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFFFFFF),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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
