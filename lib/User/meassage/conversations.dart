import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:kapwa/User/meassage/message.dart';

import '../../toast.dart';
import 'chatSetting.dart';

class Conversations extends StatefulWidget {
  const Conversations({Key? key}) : super(key: key);

  @override
  State<Conversations> createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  bool isDelete = false;
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
                      'Conversations',
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
                  height: 12.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '+ New Message',
                        style: TextStyle(
                            fontFamily: 'Hannari',
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Color(0xff3641B7)),
                      ),
                      // SizedBox(
                      //   width: 120.w,
                      // ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => ChatSettings()));
                        },
                        child: Image.asset(
                          'assets/set.png',
                          width: 30,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  width: 341.w,
                  height: 60.h,
                  child: TextField(
                    style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffB0B0B0)),
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffE99A25),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(color: Color(0xff1E4799)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff1E4799)),
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        size: 24.h,
                        color: Color(0xff414141),
                      ),
                      hintText: '   Search...',
                    ),
                  ),
                ),
                SizedBox(
                  height: 39.h,
                ),
                GestureDetector(
                  child: Stack(
                    children: [
                      Container(
                        width: 318.w,
                        height: 80.h,
                        child: Row(
                          children: [
                            Container(
                              height: 51.h,
                              width: 51.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/mokmana.png'),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(20.r)),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Lucas Mokmana',
                                        style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.sp,
                                            color: Color(0xff000000)),
                                      ),
                                      SizedBox(
                                        width: 100.w,
                                      ),
                                      Text(
                                        '2m ago',
                                        style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Color(0xff898A8D),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'let’s meetup at centre point corner',
                                        style: TextStyle(
                                            fontFamily: 'Hannari',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.sp,
                                            color: Color(0xff000000)),
                                      ),
                                      isDelete
                                          ? SizedBox(
                                              width: 32.w,
                                            )
                                          : SizedBox(
                                              width: 45.w,
                                            ),
                                      isDelete
                                          ? GestureDetector(
                                              onTap: () {
                                                showAlertDialog(context);
                                              },
                                              child: Image.asset(
                                                'assets/delete.png',
                                                scale: 4.5,
                                              ),
                                            )
                                          : CircleAvatar(
                                              backgroundColor:
                                                  Color(0xff1E4799),
                                              radius: 16.r,
                                              child: Icon(
                                                Icons.check_outlined,
                                                color: Colors.white,
                                                size: 14,
                                              ),
                                            ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 45.h,
                        child: Container(
                          height: 17.h,
                          width: 17.w,
                          decoration: BoxDecoration(
                            color: Color(0xff54D969),
                            borderRadius: BorderRadius.circular(17.r),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Within the `FirstRoute` widget
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Message()),
                    );
                  },
                  onLongPress: () {
                    setState(() {
                      isDelete = true;
                    });
                  },
                ),
                SizedBox(
                  height: 49.h,
                ),
                Stack(
                  children: [
                    Container(
                      width: 318.w,
                      height: 60.h,
                      child: Row(
                        children: [
                          Container(
                            height: 51.h,
                            width: 51.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/mokmana.png'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20.r)),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Lucas Mokmana',
                                    style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.sp,
                                        color: Color(0xff000000)),
                                  ),
                                  SizedBox(
                                    width: 100.w,
                                  ),
                                  Text(
                                    '2m ago',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: Color(0xff898A8D),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'let’s meetup at centre point corner',
                                    style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp,
                                        color: Color(0xff000000)),
                                  ),
                                  SizedBox(
                                    width: 45.w,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Color(0xff1E4799),
                                    radius: 16.r,
                                    child: Icon(
                                      Icons.check_outlined,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 45.h,
                      child: Container(
                        height: 17.h,
                        width: 17.w,
                        decoration: BoxDecoration(
                          color: Color(0xff54D969),
                          borderRadius: BorderRadius.circular(17.r),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 49.h,
                ),
                Stack(
                  children: [
                    Container(
                      width: 318.w,
                      height: 60.h,
                      child: Row(
                        children: [
                          Container(
                            height: 51.h,
                            width: 51.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/mokmana.png'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20.r)),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Lucas Mokmana',
                                    style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.sp,
                                        color: Color(0xff000000)),
                                  ),
                                  SizedBox(
                                    width: 100.w,
                                  ),
                                  Text(
                                    '2m ago',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: Color(0xff898A8D),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'let’s meetup at centre point corner',
                                    style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp,
                                        color: Color(0xff000000)),
                                  ),
                                  SizedBox(
                                    width: 45.w,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Color(0xff1E4799),
                                    radius: 16.r,
                                    child: Icon(
                                      Icons.check_outlined,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 45.h,
                      child: Container(
                        height: 17.h,
                        width: 17.w,
                        decoration: BoxDecoration(
                          color: Color(0xff54D969),
                          borderRadius: BorderRadius.circular(17.r),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 49.h,
                ),
                Stack(
                  children: [
                    Container(
                      width: 318.w,
                      height: 60.h,
                      child: Row(
                        children: [
                          Container(
                            height: 51.h,
                            width: 51.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/mokmana.png'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20.r)),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Lucas Mokmana',
                                    style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.sp,
                                        color: Color(0xff000000)),
                                  ),
                                  SizedBox(
                                    width: 100.w,
                                  ),
                                  Text(
                                    '2m ago',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp,
                                      color: Color(0xff898A8D),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'let’s meetup at centre point corner',
                                    style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp,
                                        color: Color(0xff000000)),
                                  ),
                                  SizedBox(
                                    width: 45.w,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Color(0xff1E4799),
                                    radius: 16.r,
                                    child: Icon(
                                      Icons.check_outlined,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 45.h,
                      child: Container(
                        height: 17.h,
                        width: 17.w,
                        decoration: BoxDecoration(
                          color: Color(0xff54D969),
                          borderRadius: BorderRadius.circular(17.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = MaterialButton(
      color: Color(0xffE52030),
      child: Text(
        'Delete',
        style: TextStyle(
            fontFamily: 'Hannari',
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
            color: Colors.white),
      ),
      height: 40,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      onPressed: () {
        setState(() {
          isDelete = false;
        });
        showToastShort('That message deleted successfully.', Color(0xff00F593));
        Navigator.pop(context);
      },
    );
    Widget cancelButton = TextButton(
      child: Text(
        'Cancel',
        style: TextStyle(
            fontFamily: 'Hannari',
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
            color: Color(0xff010101)),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Column(
        children: [
          Center(
              child: Image.asset(
            'assets/dMessage.png',
            width: 80,
          )),
          SizedBox(
            height: 5,
          ),
          Text(
            'Delete Message?',
            style: TextStyle(
                fontFamily: 'Hannari',
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
                color: Color(0xff010101)),
          )
        ],
      ),
      content: Text(
        'Do you really want to delete this conversation',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontFamily: 'Hannari',
            // fontWeight: FontWeight.bold,
            fontSize: 18.sp,
            color: Color(0xff010101).withOpacity(0.7)),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [cancelButton, okButton],
        ),
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
