import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:kapwa/User/Other%20Profile/otherprofile.dart';
import 'package:kapwa/User/meassage/conversations.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .07,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        child: Image.asset(
                          'assets/images/back_icon.png',
                          height: 16.h,
                          width: 23.w,
                        ),
                        // Within the `FirstRoute` widget
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Conversations()),
                          );
                        }),

                    // SizedBox(
                    //   width: MediaQuery.of(context).size.width*.15,
                    // ),
                    GestureDetector(
                        child: Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 46.h,
                                    width: 46.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50.r),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/mokmana.png'),
                                            fit: BoxFit.cover)),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lucas',
                                    style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff2F2F2F)),
                                  ),
                                  Text('Active Now',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Color(0xff2F2F2F)))
                                ],
                              ),
                            ),
                          ],
                        ),

                        // Within the `FirstRoute` widget
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OtherProfile()),
                          );
                        }),

                    Image.asset('assets/images/dots_icon.png'),
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Thursday 12:40 AM',
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2F2F2F),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.r),
                      width: 280.w,
                      height: 80.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi Jack I saw you were looking for a',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontWeight: FontWeight.w400,
                              fontSize: 13.sp,
                              color: Color(0xff262628),
                            ),
                          ),
                          Text(
                            'smoke partner.',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff262628),
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff9797BD).withOpacity(.3),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50.r),
                          topLeft: Radius.circular(50.r),
                          bottomRight: Radius.circular(50.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          height: 70.h,
                          width: 130.w,
                          // width: MediaQuery.of(context).size.width*.8,

                          child: Row(
                            children: [
                              Text('Yes, Surely.',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.sp,
                                      color: Color(0xffFFFFFF))),
                              Image.asset('assets/images/emogi.png'),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff1E4799),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.r),
                              bottomRight: Radius.circular(50.r),
                              bottomLeft: Radius.circular(50.r),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 190.w,
                      height: 70.h,
                      child: Text(
                        'shall we smoke together ?',
                        style: TextStyle(
                          fontFamily: 'Hannari',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff262628),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff9797BD).withOpacity(.3),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50.r),
                          topLeft: Radius.circular(50.r),
                          bottomRight: Radius.circular(50.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          width: 243.w,
                          height: 70.h,
                          child: Row(
                            children: [
                              Text('Yes please i am waiting for a partner',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.sp,
                                      color: Color(0xffFFFFFF))),
                              // Image.asset('assets/images/emogi.png'),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff1E4799),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.r),
                              bottomRight: Radius.circular(50.r),
                              bottomLeft: Radius.circular(50.r),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 191.w,
                      height: 70.h,
                      child: Text(
                        'Where shall we meet ?',
                        style: TextStyle(
                          fontFamily: 'Hannari',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff262628),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff9797BD).withOpacity(.3),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50.r),
                          topLeft: Radius.circular(50.r),
                          bottomRight: Radius.circular(50.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          width: 220.w,
                          height: 70.h,
                          child: Row(
                            children: [
                              Text(
                                'Lets meet at centre point corner',
                                style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.sp,
                                    color: Color(0xffFFFFFF)),
                              ),
                              // Image.asset('assets/images/emogi.png'),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff1E4799),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.r),
                              bottomRight: Radius.circular(50.r),
                              bottomLeft: Radius.circular(50.r),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .15,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color(0xff9797BD).withOpacity(.1)),
                borderRadius: BorderRadius.circular(40.r)),
            fillColor: Color(0xff9797BD).withOpacity(0.1),
            filled: true,
            prefixIcon: Container(
              margin: const EdgeInsets.all(4),
              child: Image.asset('assets/images/camera_icon.png'),
              decoration: BoxDecoration(
                  color: const Color(0xff1E4799),
                  borderRadius: BorderRadius.circular(20.r)),
            ),
            hintText: '    Message',
            suffixIcon: const Icon(
              Icons.mic_none_outlined,
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff9797BD).withOpacity(0.1),
              ),
              borderRadius: BorderRadius.circular(30.r),
            ),
          ),
        ),
      ),
    );
  }
}
