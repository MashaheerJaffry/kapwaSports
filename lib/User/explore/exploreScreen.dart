import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:kapwa/User/All%20Leagues/allleagues.dart';
import 'package:kapwa/User/All%20Matches/allmatches.dart';
import 'package:kapwa/User/All%20Players/allplayers.dart';
import 'package:kapwa/User/All%20Teams/allteams.dart';
import 'package:kapwa/User/League%20Standing/leaguestandings.dart';

import '../Team Stats/teamstats.dart';
import '../UpComingMatches/UpComingMatches.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
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
                    Text(
                      'Explore',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Hannari',
                        color: Color(0xff1E4799),
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 50.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => UpcomingMatches()));
                      },
                      child: Container(
                        height: 50.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E4799),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Upcoming Matches',
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
                  ],
                ),
                SizedBox(
                  height: 11.h,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => AllTeams()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.44,
                            height: 194.0,
                            decoration: BoxDecoration(
                                color: Color(0xff6BBAFF),
                                borderRadius: BorderRadius.circular(16.0)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 36.0, horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'All Teams',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Hannari',
                                          color: Color(0xffffffff),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => AllMatches()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.44,
                            height: 194.0,
                            decoration: BoxDecoration(
                                color: Color(0xff1E4799),
                                borderRadius: BorderRadius.circular(16.0)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 36.0, horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'All Matches',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Hannari',
                                          color: Color(0xffffffff),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 80.0,
                      left: 63.0,
                      child: Image.asset(
                        'assets/exp1.png',
                        scale: 2.5,
                      ),
                    ),
                    Positioned(
                      top: 80.0,
                      left: 270.0,
                      child: Image.asset(
                        'assets/exp2.png',
                        scale: 2.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 11.h,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TeamStats()),
                            );
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (_) => PlayerStats()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.44,
                            height: 194.0,
                            decoration: BoxDecoration(
                                color: Color(0xff7052FF),
                                borderRadius: BorderRadius.circular(16.0)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 36.0, horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Team Stats',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Hannari',
                                          color: Color(0xffffffff),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => LeagueStandings()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.44,
                            height: 194.0,
                            decoration: BoxDecoration(
                                color: Color(0xffFE1816),
                                borderRadius: BorderRadius.circular(16.0)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 36.0, horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'League\nStandings',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Hannari',
                                          color: Color(0xffffffff),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 80.0,
                      left: 63.0,
                      child: Image.asset(
                        'assets/exp3.png',
                        scale: 2.5,
                      ),
                    ),
                    Positioned(
                      top: 80.0,
                      left: 240.0,
                      child: Image.asset(
                        'assets/exp4.png',
                        scale: 2.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 11.h,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => TopPlayers()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.44,
                            height: 194.0,
                            decoration: BoxDecoration(
                                color: Color(0xffFF7943),
                                borderRadius: BorderRadius.circular(16.0)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 36.0, horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Top Players',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Hannari',
                                          color: Color(0xffffffff),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => AllLeagues()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.44,
                            height: 194.0,
                            decoration: BoxDecoration(
                                color: Color(0xff19D79E),
                                borderRadius: BorderRadius.circular(16.0)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 36.0, horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'All Leagues',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Hannari',
                                          color: Color(0xffffffff),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 68.0,
                      left: 56.0,
                      child: Image.asset(
                        'assets/exp5.png',
                        scale: 2.5,
                      ),
                    ),
                    Positioned(
                      top: 74.0,
                      left: 230.0,
                      child: Image.asset(
                        'assets/exp6.png',
                        scale: 2.5,
                      ),
                    ),
                  ],
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
