import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:revive/Utils/get_gridsize.dart';

import '../../Utils/constants.dart';
import 'dashboard_page.dart';
// import 'package:revive_postnatal/Screens/dashboard_page.dart';
// import 'package:revive_postnatal/Utils/constants.dart';

// import '../Utils/getScreenGrid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double fem = 0.0;
  int gs = 1;
  double screenWidth = 0.0;
  double rem = 0.0;
  Map gsw = {};
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    fem = size.width / 1280;
    screenWidth = MediaQuery.of(context).size.width;
    gsw = getGridSize(context);
    rem = screenWidth / 1280 * 0.97;

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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 30),
                    child: SingleChildScrollView(
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
                                  image: const AssetImage(
                                      "assets/images/img1.png"),
                                ),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Good Evening",
                                        style: TextStyle(
                                            fontSize: ((12 * rem) < 10
                                                ? 10
                                                : 12 * rem),
                                            fontWeight: FontWeight.w600,
                                            color: appDarkColor),
                                      ),
                                      Text(
                                        "Tina!",
                                        style: TextStyle(
                                            fontSize: ((12 * rem) < 10
                                                ? 10
                                                : 12 * rem),
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
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: size.height * 0.65,
                              width: size.width * 0.8,
                              decoration: BoxDecoration(
                                color: appLightColor,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  const BoxShadow(
                                    color: appBgColor, //color of shadow
                                    spreadRadius: 5,
                                    blurRadius: 4,
                                    offset: Offset(2, 2),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Pre-Program Instructions",
                                        style: TextStyle(
                                            fontSize: gs <= 2 ? 14 : 18,
                                            fontWeight: FontWeight.w700,
                                            color: appDarkColor),
                                      ),
                                      const Divider(),
                                      Text(
                                        "Watch our carefully curated introduction videos that get you up to speed on the exercises we have ahead. Complete this set to continue to your dashboard....",
                                        style: TextStyle(
                                            height: 1.5,
                                            fontSize: gs <= 2 ? 10 : 14,
                                            fontWeight: FontWeight.w400,
                                            color: appTextColor),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 15.0),
                                        child: BsRow(
                                          children: [
                                            BsCol(
                                              sizes: const ColScreen(
                                                xs: Col.col_12,
                                                sm: Col.col_12,
                                                md: Col.col_6,
                                                lg: Col.col_6,
                                                xl: Col.col_6,
                                                xxl: Col.col_6,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // height: size.height*0.4,
                                                    // width: size.width*0.4,
                                                    height: gs <= 2
                                                        ? 190
                                                        : (gs <= 5 ? 250 : 350),
                                                    width: gs <= 2
                                                        ? 350
                                                        : (gs <= 5 ? 400 : 500),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      image: const DecorationImage(
                                                          image: AssetImage(
                                                              "assets/images/img26.png"),
                                                          fit: BoxFit.cover),
                                                    ),
                                                    child: const Center(
                                                        child: Icon(
                                                      Icons.play_arrow,
                                                      color: appThemeColor,
                                                      size: 60,
                                                    )),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 12),
                                                    child: Text(
                                                      "1.Video Title Basics",
                                                      style: TextStyle(
                                                          fontSize: gs <= 2
                                                              ? 14
                                                              : (gs <= 5
                                                                  ? 16
                                                                  : 18),
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color: appDarkColor),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 12),
                                                    child: Text(
                                                      "Welcome to Revive Post-Natal Fitness Program! Your payment was successful! We just need a few little details to get you started, Let’s Go!",
                                                      style: TextStyle(
                                                          height: 1.5,
                                                          fontSize: gs <= 2
                                                              ? 8
                                                              : (gs <= 5
                                                                  ? 10
                                                                  : 13),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: appTextColor),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            BsCol(
                                              sizes: const ColScreen(
                                                xs: Col.col_12,
                                                sm: Col.col_12,
                                                md: Col.col_6,
                                                lg: Col.col_6,
                                                xl: Col.col_6,
                                                xxl: Col.col_6,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "Instructor  :",
                                                            style: TextStyle(
                                                                fontSize: gs <=
                                                                        2
                                                                    ? 10
                                                                    : (gs <= 5
                                                                        ? 12
                                                                        : 14),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color:
                                                                    appDarkColor),
                                                          ),
                                                          Row(
                                                            children: [
                                                              const CircleAvatar(
                                                                radius: 12,
                                                                backgroundColor:
                                                                    appBgColor,
                                                              ),
                                                              const SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(
                                                                "Dr.Aditi Singh",
                                                                style: TextStyle(
                                                                    fontSize: gs <=
                                                                            2
                                                                        ? 10
                                                                        : (gs <=
                                                                                5
                                                                            ? 12
                                                                            : 14),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color:
                                                                        appDarkColor),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Text(
                                                        "4 Videos",
                                                        style: TextStyle(
                                                            fontSize: gs <= 2
                                                                ? 9
                                                                : (gs <= 5
                                                                    ? 11
                                                                    : 13),
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                appTextColor),
                                                      ),
                                                    ],
                                                  ),
                                                  const Divider(),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        height: gs <= 2
                                                            ? 60
                                                            : (gs <= 5
                                                                ? 60
                                                                : 80),
                                                        width: gs <= 2
                                                            ? 60
                                                            : (gs <= 5
                                                                ? 100
                                                                : 160),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4),
                                                            image: const DecorationImage(
                                                                image: AssetImage(
                                                                    "assets/images/img26.png"),
                                                                fit: BoxFit
                                                                    .cover)),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 8),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "2.Video Title Basics",
                                                              style: TextStyle(
                                                                  fontSize: gs <=
                                                                          2
                                                                      ? 14
                                                                      : (gs <= 5
                                                                          ? 16
                                                                          : 18),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color:
                                                                      appDarkColor),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 5),
                                                              // child: Text("Welcome to Revive Post-Natal Fitness Program! Your payment was successful! We just need a few little details to get you started, Let’s Go!",style: TextStyle(fontSize: gs<=2?8:(gs<=5?10:13),fontWeight: FontWeight.w300,color: appTextColor),),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "Welcome to Revive Post-Natal Fitness Program!",
                                                                    style: TextStyle(
                                                                        height:
                                                                            1.5,
                                                                        fontSize: gs <=
                                                                                3
                                                                            ? 8
                                                                            : (gs <= 5
                                                                                ? 10
                                                                                : 12),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w300,
                                                                        color:
                                                                            appTextColor),
                                                                  ),
                                                                  Text(
                                                                    "Your paymentwas successful!We just need a few",
                                                                    style: TextStyle(
                                                                        height:
                                                                            1.5,
                                                                        fontSize: gs <=
                                                                                3
                                                                            ? 8
                                                                            : (gs <= 5
                                                                                ? 10
                                                                                : 12),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w300,
                                                                        color:
                                                                            appTextColor),
                                                                  ),
                                                                  Text(
                                                                    "little details to getyou started,Let’s Go!",
                                                                    style: TextStyle(
                                                                        height:
                                                                            1.5,
                                                                        fontSize: gs <=
                                                                                2
                                                                            ? 8
                                                                            : (gs <= 5
                                                                                ? 10
                                                                                : 12),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w300,
                                                                        color:
                                                                            appTextColor),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const Divider(),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        height: gs <= 2
                                                            ? 60
                                                            : (gs <= 5
                                                                ? 60
                                                                : 80),
                                                        width: gs <= 2
                                                            ? 60
                                                            : (gs <= 5
                                                                ? 100
                                                                : 160),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4),
                                                            image: const DecorationImage(
                                                                image: AssetImage(
                                                                    "assets/images/img26.png"),
                                                                fit: BoxFit
                                                                    .cover)),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 8),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "3.Video Title Basics",
                                                              style: TextStyle(
                                                                  fontSize: gs <=
                                                                          2
                                                                      ? 14
                                                                      : (gs <= 5
                                                                          ? 16
                                                                          : 18),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color:
                                                                      appDarkColor),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 5),
                                                              // child: Text(

                                                              //   "Welcome to Revive Post-Natal Fitness Program! Your payment was successful! We just need a few little details to get you started, Let’s Go!",
                                                              //   softWrap: true,
                                                              //   style: TextStyle(fontSize: gs<=2?8:(gs<=5?10:13),fontWeight: FontWeight.w300,color: appTextColor),),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "Welcome to Revive Post-Natal Fitness Program!",
                                                                    style: TextStyle(
                                                                        height:
                                                                            1.5,
                                                                        fontSize: gs <=
                                                                                3
                                                                            ? 8
                                                                            : (gs <= 5
                                                                                ? 10
                                                                                : 12),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color:
                                                                            appTextColor),
                                                                  ),
                                                                  Text(
                                                                    "Your paymentwas successful!We just need a few",
                                                                    style: TextStyle(
                                                                        height:
                                                                            1.5,
                                                                        fontSize: gs <=
                                                                                3
                                                                            ? 8
                                                                            : (gs <= 5
                                                                                ? 10
                                                                                : 12),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w300,
                                                                        color:
                                                                            appTextColor),
                                                                  ),
                                                                  Text(
                                                                    "little details to getyou started,Let’s Go!",
                                                                    style: TextStyle(
                                                                        height:
                                                                            1.5,
                                                                        fontSize: gs <=
                                                                                2
                                                                            ? 8
                                                                            : (gs <= 5
                                                                                ? 10
                                                                                : 12),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w300,
                                                                        color:
                                                                            appTextColor),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const Divider(),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        height: gs <= 2
                                                            ? 60
                                                            : (gs <= 5
                                                                ? 60
                                                                : 80),
                                                        width: gs <= 2
                                                            ? 60
                                                            : (gs <= 5
                                                                ? 100
                                                                : 160),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4),
                                                            image: const DecorationImage(
                                                                image: AssetImage(
                                                                    "assets/images/img26.png"),
                                                                fit: BoxFit
                                                                    .cover)),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 8),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "4.Video Title Basics",
                                                              style: TextStyle(
                                                                  fontSize: gs <=
                                                                          2
                                                                      ? 14
                                                                      : (gs <= 5
                                                                          ? 16
                                                                          : 18),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color:
                                                                      appDarkColor),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      top: 5),
                                                              // child: Text("Welcome to Revive Post-Natal Fitness Program! Your payment was successful! We just need a few little details to get you started, Let’s Go!",style: TextStyle(fontSize: gs<=2?8:(gs<=5?10:13),fontWeight: FontWeight.w300,color: appTextColor),),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "Welcome to Revive Post-Natal Fitness Program!",
                                                                    style: TextStyle(
                                                                        height:
                                                                            1.5,
                                                                        fontSize: gs <=
                                                                                3
                                                                            ? 8
                                                                            : (gs <= 5
                                                                                ? 10
                                                                                : 12),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w300,
                                                                        color:
                                                                            appTextColor),
                                                                  ),
                                                                  Text(
                                                                    "Your paymentwas successful!We just need a few",
                                                                    style: TextStyle(
                                                                        height:
                                                                            1.5,
                                                                        fontSize: gs <=
                                                                                3
                                                                            ? 8
                                                                            : (gs <= 5
                                                                                ? 10
                                                                                : 12),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w300,
                                                                        color:
                                                                            appTextColor),
                                                                  ),
                                                                  Text(
                                                                    "little details to getyou started,Let’s Go!",
                                                                    style: TextStyle(
                                                                        height:
                                                                            1.5,
                                                                        fontSize: gs <=
                                                                                2
                                                                            ? 8
                                                                            : (gs <= 5
                                                                                ? 10
                                                                                : 12),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w300,
                                                                        color:
                                                                            appTextColor),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
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
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const DashboardPage(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: gs <= 2 ? 30 : (gs <= 5 ? 35 : 40),
                                  width: gs <= 2 ? 60 : (gs <= 5 ? 90 : 120),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: appThemeColor),
                                  child: Center(
                                    child: Text(
                                      "Continue",
                                      style: TextStyle(
                                          fontSize: gs <= 2 ? 10 : 12,
                                          fontWeight: FontWeight.w500,
                                          color: appLightColor),
                                    ),
                                  ),
                                ),
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
        ),
      ),
    );
  }
}
