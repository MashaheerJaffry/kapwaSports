import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kapwa/User/editProfile/editProfile.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final picker = ImagePicker();
  bool isLoadingImage = false;
  bool obscureText = true;
  String productId = DateTime.now().millisecondsSinceEpoch.toString();
  File? file;
  bool uploading = false;
  String? imageUrl;
  bool _choice = false;
  File? _image;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xffF5F5F5),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/homepage_logo.png'),
                    SizedBox(
                      width: 40.w,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff1E4799),
                      ),
                    ),
                    // SizedBox(
                    //   width: 150.w,
                    // ),
                    // GestureDetector(
                    //     child: Icon(
                    //       Icons.chat,
                    //       color: Color(0xff1E4799),
                    //       size: 30,
                    //     ),
                    //
                    //     // Within the `FirstRoute` widget
                    //     onTap: () {
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => Conversations()),
                    //       );
                    //     }),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.94,
                  height: 170,
                  // height: 175.h,
                  decoration: BoxDecoration(
                      color: const Color(0xff1E4799),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                              // color: Colors.transparent,
                              borderRadius: BorderRadius.circular(31.0),
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                          child: GestureDetector(
                            onTap: () {
                              takeImage(context);
                            },
                            child: _image == null
                                ? Center(
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(26),
                                          child: Image.asset(
                                            'assets/profilee.png',
                                            scale: 2.0,
                                          ),
                                        ),
                                        Positioned(
                                          top: 67,
                                          left: -20,
                                          child: Image.asset(
                                            'assets/profile_add_icon.png',
                                            scale: 2.5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Stack(
                                    children: [
                                      InkWell(
                                        onTap: () => takeImage(context),
                                        child: Center(
                                          child: Container(
                                            height: 184.h,
                                            width: 105.w,
                                            // margin: EdgeInsets.only(
                                            //     bottom: 20, left: 4.0),
                                            child: Center(
                                              child: AspectRatio(
                                                aspectRatio: 1 / 1,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        alignment:
                                                            Alignment.center,
                                                        image: FileImage(
                                                            _image!,
                                                            scale: 2.7),
                                                        fit: BoxFit.cover),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            26.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      // _image == null
                                      //     ? SizedBox()
                                      //     : Positioned(
                                      //         top: 77,
                                      //         left: 10,
                                      //         child: CircleAvatar(
                                      //           backgroundColor: kGreyColor,
                                      //           child: IconButton(
                                      //             onPressed: () {
                                      //               uploadImageAndSaveItemInfo();
                                      //             },
                                      //             icon: isLoadingImage
                                      //                 ? CircularProgressIndicator(
                                      //                     color: kWhiteColor,
                                      //                   )
                                      //                 : Icon(
                                      //                     Icons.check_outlined,
                                      //                     color: kWhiteColor,
                                      //                   ),
                                      //           ),
                                      //         ),
                                      //       ),
                                    ],
                                  ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 30.0, right: 40, top: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Jerry Zhang',
                                style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: 'Position:',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700,
                                      color:
                                          Colors.white), // default text style
                                  children: [
                                    TextSpan(
                                      text: ' Point Guard ',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: 'Shoots:',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700,
                                      color:
                                          Colors.white), // default text style
                                  children: [
                                    TextSpan(
                                      text: ' Right ',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: 'Skills:',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700,
                                      color:
                                          Colors.white), // default text style
                                  children: [
                                    TextSpan(
                                      text: ' Shooting,Dribbling ',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: 'Age:',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700,
                                      color:
                                          Colors.white), // default text style
                                  children: [
                                    TextSpan(
                                      text: ' 21 ',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: 'Role:',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w700,
                                      color:
                                          Colors.white), // default text style
                                  children: [
                                    TextSpan(
                                      text: ' Player ',
                                      style: TextStyle(
                                          fontFamily: 'Hannari',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: 71.h,
                  // height: 175.h,
                  decoration: BoxDecoration(
                      color: const Color(0xff1E4799),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Center(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'Awards:',
                            style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white), // default text style
                            children: [
                              TextSpan(
                                text: ' Hustle Award, Sharp Shooter Award ',
                                style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text.rich(
                              TextSpan(
                                text: 'Sponsors:',
                                style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white), // default text style
                                children: [
                                  TextSpan(
                                    text: ' DraftKings, PepsiCo ',
                                    style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text.rich(
                              TextSpan(
                                text: 'Team:',
                                style: TextStyle(
                                    fontFamily: 'Hannari',
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white), // default text style
                                children: [
                                  TextSpan(
                                    text: ' Denver Nuggets ',
                                    style: TextStyle(
                                        fontFamily: 'Hannari',
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Statistics',
                        style: TextStyle(
                          fontFamily: 'Hannari',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff1E4799),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 99.w,
                      height: 62.h,
                      // height: 175.h,
                      decoration: BoxDecoration(
                          color: const Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Total Matches',
                              style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              '10',
                              style: TextStyle(
                                  fontFamily: 'Hannari',
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 99.w,
                          height: 62.h,
                          // height: 175.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff1E4799),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Points',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text(
                                  '50.6',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 99.w,
                          height: 62.h,
                          // height: 175.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff1E4799),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Rebounds',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text(
                                  '13.9',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 99.w,
                          height: 62.h,
                          // height: 175.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff1E4799),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Assists',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text(
                                  '9.3',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 99.w,
                          height: 62.h,
                          // height: 175.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff1E4799),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'FG%',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text(
                                  '51',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 99.w,
                          height: 62.h,
                          // height: 175.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff1E4799),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'FT%',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text(
                                  '65.6',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 99.w,
                          height: 62.h,
                          // height: 175.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff1E4799),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'FGM-FGA',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text(
                                  '16.3',
                                  style: TextStyle(
                                      fontFamily: 'Hannari',
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                    child: Container(
                      height: 45.h,
                      width: 284.w,
                      decoration: BoxDecoration(
                        color: Color(0xff1E4799),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 24,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Account Settings',
                            style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFFFFFF),
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditProfile()),
                      );
                    }),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  pickUImageFromGallery() async {
    Navigator.pop(context);
    // ignore: deprecated_member_use
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile!.path);
    });
  }

  takeImage(mContext) {
    return showDialog(
        context: mContext,
        builder: (con) {
          return SimpleDialog(
            title: Text(
              "Upload Image", //item Image
              style: TextStyle(
                fontFamily: 'Hannari',
                fontSize: 28.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                // height: 42.h
              ),
            ),
            children: [
              SimpleDialogOption(
                onPressed: pickUImageFromGallery,
                child: Text(
                  "Gallery", //Select From Gallery
                  style: TextStyle(
                    fontFamily: 'Hannari',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                    // height: 42.h
                  ),
                ),
              ),
              SimpleDialogOption(
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    fontFamily: 'Hannari',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                    // height: 42.h
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}
