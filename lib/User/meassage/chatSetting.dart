import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:google_fonts/google_fonts.dart';

import '../../toast.dart';

class ChatSettings extends StatefulWidget {
  const ChatSettings({Key? key}) : super(key: key);

  @override
  State<ChatSettings> createState() => _ChatSettingsState();
}

class _ChatSettingsState extends State<ChatSettings> {
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
                      'Chat Settings',
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Keep Chat Archieved',
                        style: TextStyle(
                          fontFamily: 'Hannari',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0F1828),
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
                            // if (ispost) {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => AllPosts()),
                            // );
                            // CupertinoPageScaffold(child: AllPosts());
                            // }
                          });
                        },
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 10.0,),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Chat Backup',
                        style: TextStyle(
                          fontFamily: 'Hannari',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0F1828),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 10.0,),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Chat History',
                        style: TextStyle(
                          fontFamily: 'Hannari',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0F1828),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Image.asset('assets/chatSet.png')
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          height: 50.0,
          color: Color(0xff1E4799),
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
        showToastShort('That message deleted successfully.', Color(0xff00F593));
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
