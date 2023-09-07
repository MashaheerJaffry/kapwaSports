import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:kapwa/User/Profile/changeTeam.dart';
import 'package:kapwa/User/SignIn/signin.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/homepage_logo.png'),
                    // SizedBox(
                    //   width: 40.0,
                    // ),
                    // Text(
                    //   '',
                    //   textAlign: TextAlign.center,
                    //   style: GoogleFonts.inter(
                    //     color: Color(0xff1E4799),
                    //     fontSize: 28.sp,
                    //     fontWeight: FontWeight.w700,
                    //   ),
                    // ),
                  ],
                ),
                // SizedBox(
                //   height: 5.h,
                // ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Image.asset('assets/winner.png'),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    // crossAxisAlignment: ,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/settings.png',
                            scale: 2.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'General',
                            style: TextStyle(
                                fontFamily: 'Hannari',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff0B204C)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                        horizontalTitleGap: 5,
                        minLeadingWidth: 2,
                        minVerticalPadding: -5,
                        leading: Image.asset(
                          'assets/acc.png',
                          scale: 2.5,
                        ),
                        title: Text(
                          'Account',
                          style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff0F1828)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xff0F1828),
                          size: 15,
                        ),
                      ),
                      ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                        horizontalTitleGap: 5,
                        minLeadingWidth: 2,
                        minVerticalPadding: -5,
                        leading: Image.asset(
                          'assets/appearance.png',
                          scale: 2.5,
                        ),
                        title: Text(
                          'Appearance',
                          style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff0F1828)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xff0F1828),
                          size: 15,
                        ),
                      ),
                      ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                        horizontalTitleGap: 5,
                        minLeadingWidth: 2,
                        minVerticalPadding: -5,
                        leading: Image.asset(
                          'assets/notification.png',
                          scale: 2.5,
                        ),
                        title: Text(
                          'Notifications',
                          style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff0F1828)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xff0F1828),
                          size: 15,
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => ChangeTeam()));
                        },
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                        horizontalTitleGap: 5,
                        minLeadingWidth: 2,
                        minVerticalPadding: -5,
                        leading: Image.asset(
                          'assets/teamSetting.png',
                          scale: 2.5,
                        ),
                        title: Text(
                          'Team Settings',
                          style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff0F1828)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xff0F1828),
                          size: 15,
                        ),
                      ),
                      ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                        horizontalTitleGap: 5,
                        minLeadingWidth: 2,
                        minVerticalPadding: -5,
                        leading: Image.asset(
                          'assets/role.png',
                          scale: 2.5,
                        ),
                        title: Text(
                          'Change Role',
                          style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff0F1828)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xff0F1828),
                          size: 15,
                        ),
                      ),
                      Divider(
                        indent: 25,
                        endIndent: 25,
                      ),
                      // SizedBox(
                      //   height: 20.0,
                      // ),
                      ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                        horizontalTitleGap: 5,
                        minLeadingWidth: 2,
                        minVerticalPadding: -5,
                        leading: Image.asset(
                          'assets/help.png',
                          scale: 2.5,
                        ),
                        title: Text(
                          'Help',
                          style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff0F1828)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xff0F1828),
                          size: 15,
                        ),
                      ),
                      ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                        horizontalTitleGap: 5,
                        minLeadingWidth: 2,
                        minVerticalPadding: -5,
                        leading: Image.asset(
                          'assets/mail.png',
                          scale: 2.5,
                        ),
                        title: Text(
                          'Invite a friend',
                          style: TextStyle(
                              fontFamily: 'Hannari',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff0F1828)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xff0F1828),
                          size: 15,
                        ),
                      ),
                      // Row(
                      //   children: [
                      //     Image.asset(
                      //       'assets/help.png',
                      //       scale: 2.5,
                      //     ),
                      //     SizedBox(
                      //       width: 5.0,
                      //     ),
                      //     Text(
                      //       'Help',
                      //       style: TextStyle(
                      // fontFamily: 'Hannari',
                      //           fontSize: 14.sp,
                      //           fontWeight: FontWeight.w600,
                      //           color: Color(0xff0F1828)),
                      //     )
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 20.0,
                      // ),

                      SizedBox(
                        height: 60.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          color: Color(0xffF5F5F5),
          height: 50.0,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10.0),
          child: GestureDetector(
            onTap: () {
              showBottomSheetA(context);
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/signout.png',
                  scale: 2.0,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  'Sign Out',
                  style: TextStyle(
                      fontFamily: 'Hannari',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff174C4F)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  showBottomSheetA(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Text(
                  'Are you sure?',
                  style: TextStyle(
                      fontFamily: 'Hannari',
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000)),
                ),
              ),
              SizedBox(
                height: 16.0,
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
                        Text(
                          'Sign Out',
                          style: TextStyle(
                            fontFamily: 'Hannari',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFFFFFF),
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  }),
              SizedBox(
                height: 16.0,
              ),
              GestureDetector(
                  child: Container(
                    height: 45.h,
                    width: 284.w,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      // borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Cancel',
                          style: TextStyle(
                            fontFamily: 'Hannari',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff174C4F),
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              SizedBox(
                height: 16.0,
              ),
            ],
          );
        });
  }
}
