import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kapwa/User/createPost.dart';
// import 'package:google_fonts/google_fonts.dart';

class AllPosts extends StatefulWidget {
  const AllPosts({Key? key}) : super(key: key);

  @override
  State<AllPosts> createState() => _AllPostsState();
}

class _AllPostsState extends State<AllPosts> {
  bool isPosts = true;
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
                    Text(
                      'All Posts',
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
                  height: 22.h,
                ),
                Container(
                  padding: EdgeInsets.only(right: 29.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                        value: isPosts,
                        thumbColor: MaterialStatePropertyAll(
                          Color(0xffFFFFFF),
                        ),
                        activeColor: Color(0xffFF1816),
                        onChanged: (value) {
                          setState(() {
                            isPosts = value;
                            if (isPosts == false) {
                              Navigator.pop(context);
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
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 21.w,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 271.w,
                        height: 60.h,
                        child: TextField(
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffB0B0B0)),
                          decoration: InputDecoration(
                            hintText: '   Search',
                            hintStyle: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffB0B0B0)),
                            filled: true,
                            fillColor: Colors.grey.shade300,
                            // border: OutlineInputBorder(
                            //   borderSide: BorderSide(
                            //     color: Color(0xffE99A25),
                            //   ),
                            // ),
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
                          ),
                        ),
                      ),
                      MaterialButton(
                        child: Container(
                          height: 55.h,
                          width: 46.w,
                          decoration: BoxDecoration(
                            color: Color(0xff1E4799),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                        onPressed: () {
                          // showDialog(
                          //     context: context,
                          //     builder: (context) {
                          //       return Container(
                          //         height: 399.h,
                          //         width: 343.w,
                          //         child: AlertDialog(
                          //           shape: RoundedRectangleBorder(
                          //               borderRadius:
                          //                   BorderRadius.circular(12.r)),
                          //           actions: [
                          //             SizedBox(
                          //               height: 23.h,
                          //             ),
                          //             Row(
                          //               mainAxisAlignment:
                          //                   MainAxisAlignment.center,
                          //               children: [
                          //                 Text(
                          //                   'Create Post',
                          //                   style: TextStyle(
                          //                       fontFamily: 'Hannari',
                          //                       fontSize: 24.sp,
                          //                       fontWeight: FontWeight.w700,
                          //                       color: Color(0xff1E4799)),
                          //                 ),
                          //               ],
                          //             ),
                          //             SizedBox(
                          //               height: 19.h,
                          //             ),
                          //             Container(
                          //               padding: EdgeInsets.only(
                          //                   right: 10.w, left: 10.w),
                          //               margin: EdgeInsets.only(right: 7.w),
                          //               width: 271.w,
                          //               height: 109.h,
                          //               child: TextField(
                          //                 style: TextStyle(
                          //                     fontFamily: 'Hannari',
                          //                     fontSize: 14.sp,
                          //                     fontWeight: FontWeight.w600,
                          //                     color: Color(0xffB0B0B0)),
                          //                 decoration: InputDecoration(
                          //                   filled: true,
                          //                   contentPadding:
                          //                       EdgeInsets.symmetric(
                          //                           vertical: 40),
                          //                   fillColor: Colors.grey.shade300,
                          //                   enabledBorder: OutlineInputBorder(
                          //                     borderRadius:
                          //                         BorderRadius.circular(10.r),
                          //                     borderSide: BorderSide(
                          //                       color: Colors.grey.shade300,
                          //                     ),
                          //                   ),
                          //                   prefixIcon: Image.asset(
                          //                       'assets/images/post_details.png'),
                          //                   hintText: 'Post Details',
                          //                 ),
                          //               ),
                          //               decoration: BoxDecoration(
                          //                   color: Colors.grey.shade300,
                          //                   borderRadius:
                          //                       BorderRadius.circular(12.r)),
                          //             ),
                          //             SizedBox(
                          //               height: 11.h,
                          //             ),
                          //             Container(
                          //               padding: EdgeInsets.only(
                          //                   right: 10.w, left: 10.w),
                          //               // margin: EdgeInsets.only(right: 7.w),
                          //               width: 290.w,
                          //               height: 60.h,
                          //               child: TextField(
                          //                 style: TextStyle(
                          //                     fontFamily: 'Hannari',
                          //                     fontSize: 14.sp,
                          //                     fontWeight: FontWeight.w600,
                          //                     color: Color(0xffB0B0B0)),
                          //                 decoration: InputDecoration(
                          //                   filled: true,
                          //                   hintMaxLines: 5,
                          //                   fillColor: Colors.grey.shade300,
                          //                   border: OutlineInputBorder(
                          //                     borderSide: BorderSide(
                          //                       color: Color(0xffE99A25),
                          //                     ),
                          //                   ),
                          //                   enabledBorder: OutlineInputBorder(
                          //                     borderRadius:
                          //                         BorderRadius.circular(10.r),
                          //                     borderSide: BorderSide(
                          //                       color: Colors.grey.shade200,
                          //                     ),
                          //                   ),
                          //                   prefixIcon: Image.asset(
                          //                     'assets/images/upload_image.png',
                          //                     width: 20.0,
                          //                   ),
                          //                   hintText: 'Upload Images/Videos',
                          //                 ),
                          //               ),
                          //             ),
                          //             SizedBox(
                          //               height: 13.h,
                          //             ),
                          //             Container(
                          //               padding: EdgeInsets.only(
                          //                   right: 10.w, left: 10.w),
                          //               // margin: EdgeInsets.only(right: 7.w),
                          //               width: 290.w,
                          //               height: 60.h,
                          //               child: TextField(
                          //                 style: TextStyle(
                          //                     fontFamily: 'Hannari',
                          //                     fontSize: 14.sp,
                          //                     fontWeight: FontWeight.w600,
                          //                     color: Color(0xffB0B0B0)),
                          //                 decoration: InputDecoration(
                          //                   filled: true,
                          //                   hintMaxLines: 5,
                          //                   fillColor: Colors.grey.shade300,
                          //                   border: OutlineInputBorder(
                          //                     borderSide: BorderSide(
                          //                       color: Color(0xffE99A25),
                          //                     ),
                          //                   ),
                          //                   enabledBorder: OutlineInputBorder(
                          //                     borderRadius:
                          //                         BorderRadius.circular(10.r),
                          //                     borderSide: BorderSide(
                          //                       color: Colors.grey.shade200,
                          //                     ),
                          //                   ),
                          //                   prefixIcon: Image.asset(
                          //                     'assets/images/tag_people.png',
                          //                     width: 20.0,
                          //                   ),
                          //                   hintText: 'Tag People',
                          //                 ),
                          //               ),
                          //             ),
                          //             SizedBox(
                          //               height: 27.h,
                          //             ),
                          //             GestureDetector(
                          //               child: Container(
                          //                 width: 312.w,
                          //                 height: 43.h,
                          //                 decoration: BoxDecoration(
                          //                   borderRadius:
                          //                       BorderRadius.circular(20.r),
                          //                   color: Color(0xff1E4799),
                          //                 ),
                          //                 child: Row(
                          //                   mainAxisAlignment:
                          //                       MainAxisAlignment.center,
                          //                   children: [
                          //                     Text(
                          //                       'Create Post',
                          //                       style: TextStyle(
                          //                         fontFamily: 'Hannari',
                          //                         color: Colors.white,
                          //                         fontSize: 18.sp,
                          //                         fontWeight: FontWeight.w600,
                          //                       ),
                          //                     )
                          //                   ],
                          //                 ),
                          //               ),
                          //               onTap: () {
                          //                 Navigator.pop(context);
                          //               },
                          //             ),
                          //           ],
                          //         ),
                          //       );
                          //     });
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => CreatePost()));
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Container(
                  height: 12.h,
                  width: 347.w,
                  padding: EdgeInsets.only(left: 21.w, right: 22.w),
                  color: Color(0xffE1DFDF),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 11.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset('assets/images/varun_icon.png'),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Varun',
                                      style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      'Satellites',
                                      style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp,
                                        color: Color(0xffFF1816),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.share,
                                  size: 16,
                                  color: Color(0xff1E4799),
                                ),
                                Icon(
                                  Icons.more_vert,
                                  size: 16,
                                  color: Color(0xff1E4799),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Vivamus nec nunc eget mauris tempor porttitor\naccumsan a orci. Suspendisse nisi ex, porttitor sed\nlectus vel, lacinia rhoncus est.',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000),
                              letterSpacing: 0.7,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/varun_pic.png',
                            fit: BoxFit.cover,
                            // width: 333.w,
                            // height: 160.h,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 12.h,
                  width: 347.w,
                  padding: EdgeInsets.only(left: 21.w, right: 22.w),
                  color: Color(0xffE1DFDF),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 11.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset('assets/images/varun_icon.png'),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Varun',
                                      style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Text(
                                      'Satellites',
                                      style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp,
                                        color: Color(0xffFF1816),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.share,
                                  size: 16,
                                  color: Color(0xff1E4799),
                                ),
                                Icon(
                                  Icons.more_vert,
                                  size: 16,
                                  color: Color(0xff1E4799),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                  letterSpacing: 0.7,
                                ),
                              ),
                              Text(
                                'elit. Vivamus nec nunc eget mauris tempor porttitor',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                  letterSpacing: 0.7,
                                ),
                              ),
                              Text(
                                ' accumsan a orci. Suspendisse nisi ex, porttitor sed ',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                  letterSpacing: 0.7,
                                ),
                              ),
                              Text(
                                'lectus vel, lacinia rhoncus est.',
                                style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff000000),
                                  letterSpacing: 0.7,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/varun_pic.png',
                            fit: BoxFit.cover,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
