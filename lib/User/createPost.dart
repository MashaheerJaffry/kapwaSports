import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/homepage_logo.png'),
                Text(
                  'Create Posts',
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
                height: 500.h,
                width: MediaQuery.of(context).size.width * 0.9,
                // padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 19.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.w, left: 10.w),
                      // margin: EdgeInsets.only(right: 7.w),
                      width: MediaQuery.of(context).size.width * 0.89,
                      height: 109.h,
                      child: TextField(
                        style: TextStyle(
                            fontFamily: 'Hannari',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffB0B0B0)),
                        decoration: InputDecoration(
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 40),
                          fillColor: Colors.grey.shade300,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            ),
                          ),
                          prefixIcon:
                              Image.asset('assets/images/post_details.png'),
                          hintText: 'Post Details',
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(12.r)),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.w, left: 10.w),
                      // margin: EdgeInsets.only(right: 7.w),
                      width: MediaQuery.of(context).size.width * 0.9,
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
                          prefixIcon: Image.asset(
                            'assets/images/upload_image.png',
                            width: 20.0,
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
                      width: MediaQuery.of(context).size.width * 0.9,
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
                          prefixIcon: Image.asset(
                            'assets/images/tag_people.png',
                            width: 20.0,
                          ),
                          hintText: 'Tag People',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    GestureDetector(
                      child: Container(
                        width: 312.w,
                        height: 43.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Color(0xff1E4799),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Create Post',
                              style: TextStyle(
                                fontFamily: 'Hannari',
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
