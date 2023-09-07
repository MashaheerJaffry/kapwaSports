import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:kapwa/User/All%20Teams/createTeam.dart';

class AllTeams extends StatefulWidget {
  const AllTeams({Key? key}) : super(key: key);

  @override
  State<AllTeams> createState() => _AllTeamsState();
}

class _AllTeamsState extends State<AllTeams> {
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset('assets/images/homepage_logo.png'),
                      Text(
                        'All Teams',
                        style: TextStyle(
                          fontFamily: 'Hannari',
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff1E4799),
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => CreateTeams()));
                        },
                        child: Container(
                          height: 50.h,
                          width: 110.w,
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
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xffFFFFFF),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      // GestureDetector(
                      //     child: Container(
                      //       height: 46.h,
                      //       width: 46.w,
                      //       decoration: BoxDecoration(
                      //           color: Color(0xff1E4799),
                      //           borderRadius: BorderRadius.circular(10.r)),
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.center,
                      //         children: [
                      //           Icon(
                      //             Icons.add,
                      //             color: Colors.white,
                      //             size: 20,
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //
                      //     // Within the `FirstRoute` widget
                      //     onTap: () {
                      //       Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => const CreateTeams()),
                      //       );
                      //     }),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 10.h,
                // ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       Container(
                //         height: 50.h,
                //         width: 110.w,
                //         decoration: BoxDecoration(
                //           color: Color(0xff1E4799),
                //           borderRadius: BorderRadius.circular(20.r),
                //         ),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             Text(
                //               'Create Team',
                //               style: TextStyle(
                //       fontFamily: 'Hannari',
                //                 fontSize: 12.sp,
                //                 fontWeight: FontWeight.w300,
                //                 color: Color(0xffFFFFFF),
                //               ),
                //             )
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: 33.h,
                ),
                Container(
                  width: 341.w,
                  height: 60.h,
                  child: TextField(
                    // textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: 'Hannari',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffB0B0B0)),
                    decoration: InputDecoration(
                      filled: true,
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
                      prefixIcon: Container(
                        height: 20.h,
                        width: 20.w,
                        child: Icon(
                          Icons.search,
                          color: Color(0xff414141),
                        ),
                      ),
                      hintText: '   Search',
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 346.w,
                  height: 76.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xff1E4799),
                    child: Container(
                        padding: EdgeInsets.only(left: 25.w, right: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset('assets/images/denever_flag.png'),
                                  SizedBox(
                                    width: 21.w,
                                  ),
                                  Text(
                                    'Phoenix Suns ',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                void _showCheckboxList(BuildContext context) {
                                  List<Map<String, dynamic>> items = [
                                    {"title": "John", "checked": true},
                                    {"title": "Smith", "checked": true},
                                    {"title": "Robert", "checked": true},
                                    {"title": "John", "checked": true},
                                  ];

                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Column(
                                          children: [
                                            Center(
                                                child: Text(
                                              "Denever Nuggets",
                                              style: TextStyle(
                                                  fontFamily: 'Hannari',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24.sp,
                                                  color: Color(0xff1E4799)),
                                            )),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                            Container(
                                              width: 241.w,
                                              height: 60.h,
                                              child: TextField(
                                                // textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontFamily: 'Hannari',
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xffB0B0B0)),
                                                decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor:
                                                      Colors.grey.shade300,
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xffE99A25),
                                                    ),
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.r),
                                                    borderSide: BorderSide(
                                                      color:
                                                          Colors.grey.shade200,
                                                    ),
                                                  ),
                                                  prefixIcon: Container(
                                                    height: 20.h,
                                                    width: 20.w,
                                                    child: Icon(
                                                      Icons.search,
                                                      color: Color(0xff414141),
                                                    ),
                                                  ),
                                                  hintText: '   Search',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        content: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: List.generate(
                                              items.length,
                                              (index) {
                                                return Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          value: items[index]
                                                              ["checked"],
                                                          onChanged: (value) {
                                                            setState(() {
                                                              items[index][
                                                                      "checked"] =
                                                                  value;
                                                            });
                                                          },
                                                        ),
                                                        SizedBox(
                                                          width: 10.0,
                                                        ),
                                                        Text(items[index]
                                                            ["title"])
                                                      ],
                                                    ),
                                                    // CheckboxListTile(
                                                    //   title: Text(
                                                    //       items[index]["title"]),
                                                    //   value: items[index]
                                                    //       ["checked"],
                                                    //   onChanged: (value) {
                                                    //     Navigator.of(context)
                                                    //         .pop();
                                                    //     setState(() {
                                                    //       items[index]
                                                    //           ["checked"] = value;
                                                    //     });
                                                    //   },
                                                    // ),
                                                  ],
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        actions: [
                                          TextButton(
                                            child: Text("OK"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                                _showCheckboxList(context);
                              },
                              child: Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/friend_icon.png',
                                      width: 20.w,
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      'Join',
                                      style: TextStyle(
                                        fontFamily: 'Hannari',
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Container(
                  width: 346.w,
                  height: 76.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xff1E4799),
                    child: Container(
                        padding: EdgeInsets.only(left: 25.w, right: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset('assets/images/denever_flag.png'),
                                  SizedBox(
                                    width: 21.w,
                                  ),
                                  Text(
                                    'Phoenix Suns ',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/friend_icon.png',
                                    width: 20.w,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    'Join',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Container(
                  width: 346.w,
                  height: 76.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xff1E4799),
                    child: Container(
                        padding: EdgeInsets.only(left: 25.w, right: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset('assets/images/denever_flag.png'),
                                  SizedBox(
                                    width: 21.w,
                                  ),
                                  Text(
                                    'Phoenix Suns ',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/friend_icon.png',
                                    width: 20.w,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    'Join',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Container(
                  width: 346.w,
                  height: 76.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xff1E4799),
                    child: Container(
                        padding: EdgeInsets.only(left: 25.w, right: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset('assets/images/denever_flag.png'),
                                  SizedBox(
                                    width: 21.w,
                                  ),
                                  Text(
                                    'Phoenix Suns ',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/friend_icon.png',
                                    width: 20.w,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    'Join',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Container(
                  width: 346.w,
                  height: 76.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xff1E4799),
                    child: Container(
                        padding: EdgeInsets.only(left: 25.w, right: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset('assets/images/denever_flag.png'),
                                  SizedBox(
                                    width: 21.w,
                                  ),
                                  Text(
                                    'Phoenix Suns ',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/friend_icon.png',
                                    width: 20.w,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    'Join',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Container(
                  width: 346.w,
                  height: 76.h,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r)),
                    color: Color(0xff1E4799),
                    child: Container(
                        padding: EdgeInsets.only(left: 25.w, right: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset('assets/images/denever_flag.png'),
                                  SizedBox(
                                    width: 21.w,
                                  ),
                                  Text(
                                    'Phoenix Suns ',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/friend_icon.png',
                                    width: 20.w,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    'Join',
                                    style: TextStyle(
                                      fontFamily: 'Hannari',
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//
// class EnterUPIBOX extends StatefulWidget {
//   const EnterUPIBOX({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<EnterUPIBOX> createState() => _EnterUPIBOXState();
// }
//
// class _EnterUPIBOXState extends State<EnterUPIBOX> {
//   @override
//   Widget build(BuildContext context) {
//     bool check=false;
//     return AlertDialog(
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12.r)
//       ),
//       actions: [
//         SizedBox(
//           height: 19.h,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Denever Nuggets',style: TextStyle(
//                       fontFamily: 'Hannari',
//                 fontSize: 24.sp,
//                 fontWeight: FontWeight.w700,
//                 color: Color(0xff1E4799)
//             ),),
//           ],
//         ),
//         SizedBox(
//           height: 14.h,
//         ),
//
//         Container(
//           // padding: EdgeInsets.only(right: 10.w,left: 10.w),
//           margin: EdgeInsets.only(right: 7.w),
//           width: 298.w,
//           height: 40.h,
//           child: TextField(
//             style: TextStyle(
//                       fontFamily: 'Hannari',
//                 fontSize: 14.sp,
//                 fontWeight: FontWeight.w600,
//                 color: Color(0xffB0B0B0)
//             ),
//             decoration: InputDecoration(
//               filled: true,
//               fillColor: Colors.grey.shade300,
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: Color(0xffE99A25),
//                 ),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10.r),
//                 borderSide: BorderSide(
//                   color: Colors.grey.shade200,
//                 ),
//               ),
//               prefixIcon: Container(
//                 child: Icon(Icons.search,color: Color(0xff414141),),
//               ),
//               hintText: '   Search',
//
//             ),
//           ),
//           // decoration: BoxDecoration(
//           //     color: Colors.grey.shade300,
//           //     borderRadius: BorderRadius.circular(12.r)
//           // ),
//         ),
//         SizedBox(
//           height: 9.h,
//         ),
//
//         Container(
//           width: 298.w,
//           height: 270.h,
//           decoration: BoxDecoration(
//             color: Colors.grey.shade100,
//             borderRadius: BorderRadius.circular(10.r),
//           ),
//
//           child: Column(
//             children: [
//               Checkbox(
//                   value: check,
//                   onChanged: (value) {
//                     setState(() {
//                       check = !check;
//                     });
//                   }
//               ),
//
//             ],
//           ),
//         ),
//
//       ],
//     );
//   }
// }
