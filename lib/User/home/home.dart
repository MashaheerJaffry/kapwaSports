import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:kapwa/User/Team%20Stats/teamstats.dart';

import '../All Posts/posts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool ispost = false;
  @override
  void initState() {
    // TODO: implement initState
    ispost = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
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
                      'Home Page',
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
                  height: 16.h,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 27.w),
                      child: Text(
                        'Hello Varun',
                        style: TextStyle(
                          fontFamily: 'Hannari',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff414141),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 27.w),
                      child: Text(
                        'Welcome Back!',
                        style: TextStyle(
                          fontFamily: 'Hannari',
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff414141),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50.w,
                    ),
                    Text(
                      'Games',
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff414141),
                      ),
                    ),
                    Switch(
                      value: ispost,
                      thumbColor: MaterialStatePropertyAll(
                        Color(0xffFFFFFF),
                      ),
                      activeColor: Color(0xffFF1816),
                      onChanged: (value) {
                        setState(() {
                          ispost = value;
                          if (ispost) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllPosts()),
                            );
                            // CupertinoPageScaffold(child: AllPosts());
                          }
                        });
                      },
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff414141),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 36.h,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 27.w),
                      child: Text(
                        'Recent Matches',
                        style: TextStyle(
                          fontFamily: 'Hannari',
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: Color(0xff414141),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  height: 381.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                    color: Color(0xffE1DFDF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 23.h,
                      ),
                      Text(
                        'Champions League - Group Stage: Matchday 3',
                        style: TextStyle(
                            fontFamily: 'Hannari',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff414141)),
                      ),
                      SizedBox(
                        height: 23.h,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/denver_icon.png',
                                height: 48.h,
                                width: 48.w,
                              ),
                              Text(
                                'Denver Nuggets',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: Color(0xff414141),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 21.w,
                          ),
                          Text(
                            '30-12',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 36.sp,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff414141),
                            ),
                          ),
                          SizedBox(
                            width: 21.w,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/losangles_icon.png',
                                height: 48.h,
                                width: 48.w,
                              ),
                              Text(
                                'Los Angeles',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  color: Color(0xff2F2F2F),
                                ),
                              ),
                              Text(
                                'Clipers',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  color: Color(0xff2F2F2F),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(),
                      SizedBox(
                        height: 23.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/zaltan_icon.png',
                                  width: 38.w,
                                  height: 40.h,
                                ),
                                SizedBox(
                                  width: 10.sp,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Zaltan',
                                      style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.sp,
                                        color: Color(0xff414141),
                                      ),
                                    ),
                                    Text(
                                      'Ibrahimovic',
                                      style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.sp,
                                        color: Color(0xff414141),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Image.asset('assets/images/zaltan8_icon.png'),
                        ],
                      ),
                      SizedBox(
                        height: 23.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/paulo_icon.png',
                                  width: 38.w,
                                  height: 40.h,
                                ),
                                SizedBox(
                                  width: 10.sp,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Paulo Dybala',
                                      style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.sp,
                                        color: Color(0xff414141),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Image.asset('assets/images/paulo7_icon.png'),
                        ],
                      ),
                      SizedBox(
                        height: 23.h,
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              child: Text(
                                'See full stats',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                  color: Color(0xff414141),
                                ),
                              ),

                              // Within the `FirstRoute` widget
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TeamStats()),
                                );
                              })
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
