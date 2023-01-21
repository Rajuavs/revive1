import 'package:bs_flutter/bs_flutter.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:revive/Utils/get_gridsize.dart';

import '../../Utils/constants.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  double fem = 0.0;
  double rem = 0.0;
  int gs = 1;
  Map gsw = {};
  double screenWidth = 0.0;
  late TabController controller;
  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    fem = size.width / 1280;
    screenWidth = MediaQuery.of(context).size.width;
    rem = size.width / 1280 * 0.97;

    gsw = getGridSize(context);
    print("gsgs $gs $screenWidth");
    return Scaffold(
      backgroundColor: appLightColor,
      body: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 50 * fem, horizontal: 100 * fem),
        child: SizedBox(
          child: Row(
            children: [
              Container(
                width: gs <= 2 ? 0 : 40,
                decoration: const BoxDecoration(color: appThemeColor),
                child: const Center(
                  child: Icon(
                    Icons.home,
                    color: appLightColor,
                    size: 22,
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                decoration: const BoxDecoration(color: appLightColor),
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Image(
                            height: gs <= 2 ? 30 : (gs <= 4 ? 40 : 45),
                            width: gs <= 2 ? 60 : (gs <= 5 ? 90 : 130),
                            image: const AssetImage("assets/icons/img1.png"),
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Good Evening",
                                  style: TextStyle(
                                      fontSize: gs <= 2 ? 10 : 12,
                                      fontWeight: FontWeight.w600,
                                      color: appDarkColor),
                                ),
                                Text(
                                  "Tina!",
                                  style: TextStyle(
                                      fontSize: gs <= 2 ? 10 : 12,
                                      fontWeight: FontWeight.w400,
                                      color: appThemeColor),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const CircleAvatar(
                              radius: 20,
                              backgroundColor: appThemeColor,
                              child: CircleAvatar(
                                radius: 18,
                                backgroundImage:
                                    AssetImage("assets/images/img20.png"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                        height: size.height * 0.7,
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                          color: appLightColor,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(
                              color: appBgColor, //color of shadow
                              spreadRadius: 5,
                              blurRadius: 4,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dashboard",
                                  style: TextStyle(
                                      fontSize: gs <= 2 ? 14 : 18,
                                      fontWeight: FontWeight.w700,
                                      color: appDarkColor),
                                ),
                                const Divider(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 20),
                                  child: BsRow(
                                    children: [
                                      BsCol(
                                        sizes: const ColScreen(
                                          xs: Col.col_12,
                                          sm: Col.col_12,
                                          md: Col.col_12,
                                          lg: Col.col_8,
                                          xl: Col.col_8,
                                          xxl: Col.col_8,
                                        ),
                                        child: Container(
                                          height: size.height * 0.45,
                                          // width: gs <= 2
                                          //     ? 350
                                          //     : (gs <= 5 ? 550 : 750),
                                          decoration: const BoxDecoration(
                                              //  border: Border.all(color: appTextColor,width: 1),
                                              ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                // width: gs <= 2
                                                //     ? 320
                                                //     : (gs <= 5 ? 530 : 730),
                                                child: Row(
                                                  children: [
                                                    Row(
                                                      children: const [
                                                        Icon(
                                                          Icons.arrow_back_ios,
                                                          size: 12,
                                                          color: appTextColor,
                                                        ),
                                                        Text(
                                                          "Feb 23",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  appDarkColor),
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                          size: 12,
                                                          color: appDarkColor,
                                                        ),
                                                      ],
                                                    ),
                                                    ButtonsTabBar(
                                                      buttonMargin:
                                                          EdgeInsets.symmetric(
                                                        vertical: 10,
                                                        horizontal:
                                                            screenWidth <= 765
                                                                ? 5
                                                                : (screenWidth <=
                                                                        1137
                                                                    ? 10
                                                                    : 25),
                                                      ),
                                                      radius: 4,
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                        horizontal:
                                                            screenWidth <= 765
                                                                ? 5
                                                                : (screenWidth <=
                                                                        1137
                                                                    ? 10
                                                                    : 15),
                                                      ),

                                                      // center: true,
                                                      unselectedBackgroundColor:
                                                          appLightColor,
                                                      backgroundColor:
                                                          appThemeColor,
                                                      // unselectedDecoration:
                                                      //     BoxDecoration(
                                                      //   borderRadius:
                                                      //       BorderRadius.circular(
                                                      //           4),
                                                      //   color: appLightColor,
                                                      //   boxShadow: [
                                                      //     BoxShadow(
                                                      //       color:
                                                      //           appTextColor, //color of shadow
                                                      //       spreadRadius: 5,
                                                      //       blurRadius: 4,
                                                      //       offset: Offset(2, 2),
                                                      //     ),
                                                      //   ],
                                                      // ),

                                                      unselectedLabelStyle:
                                                          const TextStyle(
                                                              color:
                                                                  appDarkColor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                      labelStyle:
                                                          const TextStyle(
                                                              color:
                                                                  appLightColor,
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                      height: 50,
                                                      physics:
                                                          const BouncingScrollPhysics(),

                                                      controller: controller,
                                                      tabs: const [
                                                        Tab(
                                                          text: "Week 1",
                                                        ),
                                                        Tab(
                                                          text: "Week 2",
                                                        ),
                                                        Tab(
                                                          text: "Week 3",
                                                        ),
                                                        Tab(
                                                          text: "Week 4",
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                  child: TabBarView(
                                                      controller: controller,
                                                      children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10.0),
                                                      child: Container(
                                                        height:
                                                            size.height * 0.40,
                                                        // width: gs <= 2
                                                        //     ? 320
                                                        //     : (gs <= 5
                                                        //         ? 530
                                                        //         : 730),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appLightColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              color:
                                                                  appBgColor, //color of shadow
                                                              spreadRadius: 5,
                                                              blurRadius: 4,
                                                              offset:
                                                                  Offset(2, 2),
                                                            ),
                                                          ],
                                                        ),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Column(
                                                              children: [
                                                                SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  child: Row(
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            Column(
                                                                              children: [
                                                                                Text(
                                                                                  "06-02-2023",
                                                                                  style: TextStyle(fontSize: gs <= 2 ? 9 : 11, color: appDarkColor, fontWeight: FontWeight.bold),
                                                                                ),
                                                                                Text(
                                                                                  "Monday",
                                                                                  style: TextStyle(fontSize: gs <= 2 ? 9 : 11, color: appTextColor, fontWeight: FontWeight.w500),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 8.0),
                                                                              child: Container(
                                                                                height: screenWidth <= 610 ? 90 : (screenWidth <= 1020 ? 120 : 70),
                                                                                width: gs <= 2 ? 80 : 100,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(4),
                                                                                  image: const DecorationImage(image: AssetImage("assets/images/img26.png"), fit: BoxFit.cover),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.only(left: 16.0),
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      // mainAxisSize: MainAxisSize.min,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: SizedBox(
                                                                                            child: Text(
                                                                                              "Breathing and Relaxation Part 1",
                                                                                              softWrap: true,
                                                                                              style: TextStyle(fontSize: screenWidth <= 582 ? 10 : (screenWidth <= 760 ? 12 : 14), color: appDarkColor, fontWeight: FontWeight.w700),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 16,
                                                                                          // width: screenWidth <= 546 ? 55 : (screenWidth <= 616 ? 60 : 72),
                                                                                          decoration: BoxDecoration(
                                                                                            color: Colors.orange.shade100,
                                                                                            borderRadius: BorderRadius.circular(2),
                                                                                          ),
                                                                                          padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                                          child: Row(
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            children: [
                                                                                              const Icon(
                                                                                                Icons.videocam,
                                                                                                size: 12,
                                                                                                color: Colors.orange,
                                                                                              ),
                                                                                              const SizedBox(
                                                                                                width: 5,
                                                                                              ),
                                                                                              Text(
                                                                                                "RECORDED",
                                                                                                style: TextStyle(fontSize: gs <= 2 ? 6 : 8, fontWeight: FontWeight.w400, color: Colors.orange),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.only(top: 8.0),
                                                                                      child: SizedBox(
                                                                                        child: Text(
                                                                                          "Welcome to Revive Post-Natal Fitness Program! Your payment was successful! We just need a few little details to get you started, Let’s Go!Welcome to Revive Post-Natal Fitness Program! Your payment was successful! We ",
                                                                                          // softWrap: true,
                                                                                          // maxLines: 3,
                                                                                          style: TextStyle(height: 1.5, fontSize: gs <= 2 ? 9 : 11, fontWeight: FontWeight.w400, color: appTextColor),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(left: 20.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: const [
                                                                                CircleAvatar(
                                                                                  radius: 12,
                                                                                  backgroundColor: appGreyColor,
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsets.only(left: 3.0),
                                                                                  child: Text(
                                                                                    "Dr.Apoorva Ravi",
                                                                                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: appTextColor),
                                                                                  ),
                                                                                )
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(top: 8.0),
                                                                              child: Container(
                                                                                height: gs <= 2 ? 20 : 30,
                                                                                width: gs <= 2 ? 50 : 100,
                                                                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: appThemeColor),
                                                                                child: Center(
                                                                                  child: Text(
                                                                                    "Watch Now",
                                                                                    style: TextStyle(fontSize: gs <= 2 ? 7 : 10, fontWeight: FontWeight.w500, color: appLightColor),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                const Divider(),
                                                                SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  child: Row(
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            Column(
                                                                              children: [
                                                                                Text(
                                                                                  "08-02-2023",
                                                                                  style: TextStyle(fontSize: gs <= 2 ? 9 : 11, color: appDarkColor, fontWeight: FontWeight.bold),
                                                                                ),
                                                                                Text(
                                                                                  "Wednesday",
                                                                                  style: TextStyle(fontSize: gs <= 2 ? 9 : 11, color: appTextColor, fontWeight: FontWeight.w500),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 8.0),
                                                                              child: Container(
                                                                                height: screenWidth <= 610 ? 90 : (screenWidth <= 1020 ? 120 : 70),
                                                                                width: gs <= 2 ? 80 : 100,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(4),
                                                                                  image: const DecorationImage(image: AssetImage("assets/images/img26.png"), fit: BoxFit.cover),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.only(left: 16.0),
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      // mainAxisSize: MainAxisSize.min,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: SizedBox(
                                                                                            child: Text(
                                                                                              "Week 1 Live Session",
                                                                                              softWrap: true,
                                                                                              style: TextStyle(fontSize: screenWidth <= 582 ? 10 : (screenWidth <= 760 ? 12 : 14), color: appDarkColor, fontWeight: FontWeight.w700),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 16,
                                                                                          // width: screenWidth <= 546 ? 55 : (screenWidth <= 616 ? 60 : 72),
                                                                                          decoration: BoxDecoration(
                                                                                            color: Colors.red.shade100,
                                                                                            borderRadius: BorderRadius.circular(2),
                                                                                          ),
                                                                                          padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                                          child: Row(
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            children: [
                                                                                              const Icon(
                                                                                                Icons.radio_button_on,
                                                                                                size: 12,
                                                                                                color: Colors.red,
                                                                                              ),
                                                                                              const SizedBox(
                                                                                                width: 5,
                                                                                              ),
                                                                                              Text(
                                                                                                "LIVE",
                                                                                                style: TextStyle(fontSize: gs <= 2 ? 6 : 8, fontWeight: FontWeight.w400, color: Colors.red),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.only(top: 8.0),
                                                                                      child: SizedBox(
                                                                                        child: Text(
                                                                                          "Welcome to Revive Post-Natal Fitness Program! Your payment was successful! We just need a few little details to get you started, Let’s Go!Welcome to Revive Post-Natal Fitness Program! Your payment was successful! We ",
                                                                                          // softWrap: true,
                                                                                          // maxLines: 3,
                                                                                          style: TextStyle(height: 1.5, fontSize: gs <= 2 ? 9 : 11, fontWeight: FontWeight.w400, color: appTextColor),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(left: 20.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: const [
                                                                                CircleAvatar(
                                                                                  radius: 12,
                                                                                  backgroundColor: appGreyColor,
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsets.only(left: 3.0),
                                                                                  child: Text(
                                                                                    "Dr.Apoorva Ravi",
                                                                                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: appTextColor),
                                                                                  ),
                                                                                )
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(top: 8.0),
                                                                              child: Container(
                                                                                height: gs <= 2 ? 20 : 30,
                                                                                width: gs <= 2 ? 50 : 100,
                                                                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: appThemeColor),
                                                                                child: Center(
                                                                                  child: Text(
                                                                                    "Watch Now",
                                                                                    style: TextStyle(fontSize: gs <= 2 ? 7 : 10, fontWeight: FontWeight.w500, color: appLightColor),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                const Divider(),
                                                                SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  child: Row(
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            Column(
                                                                              children: [
                                                                                Text(
                                                                                  "10-02-2023",
                                                                                  style: TextStyle(fontSize: gs <= 2 ? 9 : 11, color: appDarkColor, fontWeight: FontWeight.bold),
                                                                                ),
                                                                                Text(
                                                                                  "Friday",
                                                                                  style: TextStyle(fontSize: gs <= 2 ? 9 : 11, color: appTextColor, fontWeight: FontWeight.w500),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(left: 8.0),
                                                                              child: Container(
                                                                                height: screenWidth <= 610 ? 90 : (screenWidth <= 1020 ? 120 : 70),
                                                                                width: gs <= 2 ? 80 : 100,
                                                                                decoration: BoxDecoration(
                                                                                  borderRadius: BorderRadius.circular(4),
                                                                                  image: const DecorationImage(image: AssetImage("assets/images/img26.png"), fit: BoxFit.cover),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.only(left: 16.0),
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      // mainAxisSize: MainAxisSize.min,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: SizedBox(
                                                                                            child: Text(
                                                                                              "Core Muscle Activation Part 1",
                                                                                              softWrap: true,
                                                                                              style: TextStyle(fontSize: screenWidth <= 582 ? 10 : (screenWidth <= 760 ? 12 : 14), color: appDarkColor, fontWeight: FontWeight.w700),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Container(
                                                                                          height: 16,
                                                                                          // width: screenWidth <= 546 ? 55 : (screenWidth <= 616 ? 60 : 72),
                                                                                          decoration: BoxDecoration(
                                                                                            color: Colors.orange.shade100,
                                                                                            borderRadius: BorderRadius.circular(2),
                                                                                          ),
                                                                                          padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                                          child: Row(
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            children: [
                                                                                              const Icon(
                                                                                                Icons.videocam,
                                                                                                size: 12,
                                                                                                color: Colors.orange,
                                                                                              ),
                                                                                              const SizedBox(
                                                                                                width: 5,
                                                                                              ),
                                                                                              Text(
                                                                                                "RECORDED",
                                                                                                style: TextStyle(fontSize: gs <= 2 ? 6 : 8, fontWeight: FontWeight.w400, color: Colors.orange),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.only(top: 8.0),
                                                                                      child: SizedBox(
                                                                                        child: Text(
                                                                                          "Welcome to Revive Post-Natal Fitness Program! Your payment was successful! We just need a few little details to get you started, Let’s Go!Welcome to Revive Post-Natal Fitness Program! Your payment was successful! We ",
                                                                                          // softWrap: true,
                                                                                          // maxLines: 3,
                                                                                          style: TextStyle(height: 1.5, fontSize: gs <= 2 ? 9 : 11, fontWeight: FontWeight.w400, color: appTextColor),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(left: 20.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: const [
                                                                                CircleAvatar(
                                                                                  radius: 12,
                                                                                  backgroundColor: appGreyColor,
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsets.only(left: 3.0),
                                                                                  child: Text(
                                                                                    "Dr.Apoorva Ravi",
                                                                                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: appTextColor),
                                                                                  ),
                                                                                )
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsets.only(top: 8.0),
                                                                              child: Container(
                                                                                height: gs <= 2 ? 20 : 30,
                                                                                width: gs <= 2 ? 50 : 100,
                                                                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: appThemeColor),
                                                                                child: Center(
                                                                                  child: Text(
                                                                                    "Watch Now",
                                                                                    style: TextStyle(fontSize: gs <= 2 ? 7 : 10, fontWeight: FontWeight.w500, color: appLightColor),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10.0),
                                                      child: Container(
                                                        height:
                                                            size.height * 0.40,
                                                        width: gs <= 2
                                                            ? 320
                                                            : (gs <= 5
                                                                ? 530
                                                                : 730),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appLightColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              color:
                                                                  appBgColor, //color of shadow
                                                              spreadRadius: 5,
                                                              blurRadius: 4,
                                                              offset:
                                                                  Offset(2, 2),
                                                            ),
                                                          ],
                                                        ),
                                                        child: const Center(
                                                          child: Text("2"),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10.0),
                                                      child: Container(
                                                        height:
                                                            size.height * 0.40,
                                                        width: gs <= 2
                                                            ? 320
                                                            : (gs <= 5
                                                                ? 530
                                                                : 730),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appLightColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              color:
                                                                  appBgColor, //color of shadow
                                                              spreadRadius: 5,
                                                              blurRadius: 4,
                                                              offset:
                                                                  Offset(2, 2),
                                                            ),
                                                          ],
                                                        ),
                                                        child: const Center(
                                                          child: Text("3"),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10.0),
                                                      child: Container(
                                                        height:
                                                            size.height * 0.40,
                                                        width: gs <= 2
                                                            ? 320
                                                            : (gs <= 5
                                                                ? 530
                                                                : 730),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appLightColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              color:
                                                                  appBgColor, //color of shadow
                                                              spreadRadius: 5,
                                                              blurRadius: 4,
                                                              offset:
                                                                  Offset(2, 2),
                                                            ),
                                                          ],
                                                        ),
                                                        child: const Center(
                                                          child: Text("4"),
                                                        ),
                                                      ),
                                                    ),
                                                  ])),
                                            ],
                                          ),
                                        ),
                                      ),
                                      BsCol(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        sizes: const ColScreen(
                                          xs: Col.col_12,
                                          sm: Col.col_12,
                                          md: Col.col_12,
                                          lg: Col.col_4,
                                          xl: Col.col_4,
                                          xxl: Col.col_4,
                                        ),
                                        child: Container(
                                          height: size.height * 0.45,
                                          width: gs <= 2
                                              ? 200
                                              : (gs <= 5 ? 250 : 300),
                                          decoration: BoxDecoration(
                                            color: appLightColor,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            boxShadow: const [
                                              BoxShadow(
                                                color:
                                                    appBgColor, //color of shadow
                                                spreadRadius: 5,
                                                blurRadius: 4,
                                                offset: Offset(2, 2),
                                              ),
                                            ],
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Guidelines and Warnings",
                                                  style: TextStyle(
                                                      fontSize:
                                                          gs <= 2 ? 10 : 13,
                                                      color: appDarkColor,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                const Divider(),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Container(
                                    height: size.height * 0.25,
                                    width: size.width * 0.8,
                                    decoration: BoxDecoration(
                                      color: appLightColor,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: appBgColor, //color of shadow
                                          spreadRadius: 5,
                                          blurRadius: 4,
                                          offset: Offset(2, 2),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
