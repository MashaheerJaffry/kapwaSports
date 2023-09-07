import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kapwa/User/Profile/profile.dart';
import 'package:kapwa/User/home/home.dart';
import 'package:kapwa/User/meassage/conversations.dart';

import '../explore/exploreScreen.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({Key, key}) : super(key: key);

  // final RouteLogin=true;
  @override
  bottomNavigationBarState createState() => bottomNavigationBarState();
}

class bottomNavigationBarState extends State<bottomNavigationBar> {
  @override
  var smallHeading = 15.0;
  var largeHeading = 20.0;
  static var selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    ExploreScreen(),
    Conversations(),
    // AllLeagues(),
    // AllMatches(),
    Profile(),
  ];

  void initState() {
    // TODO: implement initState
    // changeLoginStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 85.h,
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10,
              ),
            ],
          ),
          // color: Colors.black,
          child: ClipRRect(
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              unselectedItemColor: Color(0xffE99A25).withOpacity(0.4),
              selectedItemColor: Color(0xffE99A25),
              onTap: _onTap,
              currentIndex: selectedIndex,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  label: '',
                  icon: selectedIndex == 0
                      ? Image.asset(
                          'assets/nav/homeB.png',
                          height: 36.h,
                          width: 34.w,
                        )
                      : Image.asset(
                          'assets/nav/home.png',
                          height: 36.h,
                          width: 34.w,
                        ),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: selectedIndex == 1
                      ? Image.asset(
                          'assets/nav/searchS.png',
                          width: 36.w,
                          height: 34.h,
                        )
                      : Image.asset(
                          'assets/nav/searchU.png',
                          width: 36.w,
                          height: 34.h,
                        ),
                  // label: "Basket"
                ),
                BottomNavigationBarItem(
                  icon: selectedIndex == 2
                      ? Image.asset(
                          'assets/nav/messageS.png',
                          height: 36.h,
                          width: 34.w,
                        )
                      : Image.asset(
                          'assets/nav/messageU.png',
                          height: 36.h,
                          width: 34.w,
                        ),
                  label: "",
                ),
                // BottomNavigationBarItem(
                //   icon: selectedIndex == 3
                //       ? Image.asset(
                //           'assets/nav/tab4.png',
                //           height: 34.h,
                //           width: 32.w,
                //         )
                //       : Image.asset(
                //           'assets/nav/tab4b.png',
                //           height: 34.h,
                //           width: 32.w,
                //         ),
                //   label: "",
                // ),
                // BottomNavigationBarItem(
                //   icon: selectedIndex == 4
                //       ? Image.asset(
                //           'assets/nav/img_1.png',
                //           height: 36.h,
                //           width: 34.w,
                //         )
                //       : Image.asset(
                //           'assets/nav/img.png',
                //           height: 36.h,
                //           width: 34.w,
                //         ),
                //   label: "",
                // ),
                BottomNavigationBarItem(
                  icon: selectedIndex == 3
                      ? Image.asset(
                          'assets/nav/profilee.png',
                          width: 36.w,
                          height: 34.h,
                        )
                      : Image.asset(
                          'assets/nav/profile.png',
                          width: 36.w,
                          height: 34.h,
                        ),
                  label: "",
                ),
              ],
            ),
          ),
        ),
        body: _widgetOptions.elementAt(selectedIndex),
      ),
    );
  }

  void _onTap(int index) {
    selectedIndex = index;
    setState(() {});
  }
}

// class TabBarA extends StatefulWidget {
//   const TabBarA({Key? key}) : super(key: key);
//
//   @override
//   State<TabBarA> createState() => _TabBarAState();
// }
//
// class _TabBarAState extends State<TabBarA> {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoTabScaffold(
//         tabBar: CupertinoTabBar(
//           height: 60.0,
//           activeColor: Theme.of(context).primaryColor,
//           items: <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               activeIcon: Image.asset(
//                 'assets/nav/homeB.png',
//                 height: 36.h,
//                 width: 34.w,
//               ),
//               label: '',
//               icon:
//                   // selectedIndex == 0
//                   //     ? Image.asset(
//                   //   'assets/nav/homeB.png',
//                   //   height: 36.h,
//                   //   width: 34.w,
//                   // )
//                   //     :
//                   Image.asset(
//                 'assets/nav/home.png',
//                 height: 36.h,
//                 width: 34.w,
//               ),
//             ),
//             BottomNavigationBarItem(
//               activeIcon: Image.asset(
//                 'assets/nav/signalB.png',
//                 width: 34.w,
//                 height: 34.h,
//               ),
//               label: '',
//               icon:
//                   // selectedIndex == 1
//                   //     ?
//                   //     :
//                   Image.asset(
//                 'assets/nav/signal.png',
//                 width: 34.w,
//                 height: 34.h,
//               ),
//               // label: "Basket"
//             ),
//             BottomNavigationBarItem(
//               activeIcon: Image.asset(
//                 'assets/nav/walletB.png',
//                 height: 36.h,
//                 width: 34.w,
//               ),
//               icon:
//                   // selectedIndex == 2
//                   //     ?
//                   //     :
//                   Image.asset(
//                 'assets/nav/wallet.png',
//                 height: 36.h,
//                 width: 34.w,
//               ),
//               label: "",
//             ),
//             BottomNavigationBarItem(
//               activeIcon: Image.asset(
//                 'assets/nav/profilee.png',
//                 width: 32.w,
//                 height: 32.h,
//               ),
//               icon:
//                   // selectedIndex == 3
//                   //     ?
//                   //     :
//                   Image.asset(
//                 'assets/nav/profile.png',
//                 width: 32.w,
//                 height: 32.h,
//               ),
//               label: "",
//             ),
//           ],
//         ),
//         tabBuilder: (context, index) {
//           switch (index) {
//             case 0:
//               return CupertinoTabView(
//                 builder: (context) {
//                   return CupertinoPageScaffold(child: Home());
//                 },
//               );
//             case 1:
//               return CupertinoTabView(
//                 builder: (context) {
//                   return CupertinoPageScaffold(child: TeamStats());
//                 },
//               );
//             case 2:
//               return CupertinoTabView(
//                 builder: (context) {
//                   return CupertinoPageScaffold(child: AllTeams());
//                 },
//               );
//             default:
//               return CupertinoTabView(
//                 builder: (context) {
//                   return CupertinoPageScaffold(child: Profile());
//                 },
//               );
//           }
//         });
//   }
// }
