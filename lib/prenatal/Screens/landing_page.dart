import 'package:flutter/material.dart';

import '../../Utils/constants.dart';
import '../../Utils/getscreenGrid.dart';
import 'register_page.dart';

class PreLandingPage extends StatefulWidget {
  const PreLandingPage({Key? key}) : super(key: key);

  @override
  State<PreLandingPage> createState() => _PreLandingPageState();
}

class _PreLandingPageState extends State<PreLandingPage> {
  double screenWidth = 0.0;
  int gs = 1;
  double rem = 0.0;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    gs = getScreenGrid(screenWidth);
    print("gsgs $gs $screenWidth");
    rem = screenWidth / 1280 * 0.97;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: appLightColor),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: appLightColor,
                  ),
                  height: gs <= 2 ? 300 : (gs <= 5 ? 350 : 450),
                  child: Stack(
                    children: [
                      Positioned(
                        left: gs <= 2 ? 100 : (gs <= 5 ? 400 : 550),
                        right: 0.0,
                        top: 0.0,
                        bottom: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  const Color.fromRGBO(245, 245, 245, 1)
                                      .withOpacity(0.5),
                                  BlendMode.dstATop),
                              image: const AssetImage("assets/images/img2.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        constraints: const BoxConstraints(
                          maxHeight: 450,
                          minHeight: 300,
                        ),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(235, 235, 235, 1),
                                Color.fromRGBO(232, 232, 232, 0),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Image(
                                  height: gs <= 2 ? 30 : (gs <= 4 ? 40 : 45),
                                  width: gs <= 2 ? 60 : (gs <= 5 ? 90 : 130),
                                  image: const AssetImage(
                                      "assets/images/img1.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 50.0),
                                child: Text(
                                  "Empower Your Pregnancy With Us",
                                  style: TextStyle(
                                      fontSize:
                                          ((26 * rem) < 16 ? 16 : 26 * rem),
                                      fontWeight: FontWeight.w600,
                                      color: appDarkColor),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Text(
                                  "The #1 Fitness Method For The Modern Mama.",
                                  style: TextStyle(
                                      fontSize:
                                          ((18 * rem) < 12 ? 12 : 18 * rem),
                                      fontWeight: FontWeight.w500,
                                      color: appTextColor),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Text(
                                  "50+ Tailor made videos by experts on demand. With these you get stronger during",
                                  style: TextStyle(
                                      height: 1.5,
                                      fontSize:
                                          ((14 * rem) < 10 ? 10 : 14 * rem),
                                      fontWeight: FontWeight.w300,
                                      color: appLightTextColor),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "pregnancy and heal faster after your delivery.",
                                  style: TextStyle(
                                      height: 1.5,
                                      fontSize:
                                          ((14 * rem) < 10 ? 10 : 14 * rem),
                                      fontWeight: FontWeight.w300,
                                      color: appLightTextColor),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Container(
                                  height: gs <= 2 ? 25 : (gs <= 4 ? 35 : 45),
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    gradient: const LinearGradient(
                                        colors: [
                                          appThemeColor,
                                          appLightThemeColor,
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomRight),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Start Free Trail",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: appLightColor,
                                          fontSize: ((15 * rem) < 14
                                              ? 14
                                              : 15 * rem)),
                                    ),
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
                Container(
                  // height: 220,
                  decoration: const BoxDecoration(color: appBgColor),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 50),
                    child: Wrap(
                      spacing: 30,
                      runSpacing: 20,
                      alignment: WrapAlignment.spaceBetween,
                      // runAlignment: WrapAlignment.spaceBetween,
                      crossAxisAlignment: WrapCrossAlignment.center,

                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          height: 120,
                          width: gs <= 2 ? 100 : (gs <= 4 ? 120 : 180),
                          image: const AssetImage("assets/images/img3.png"),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Variety of Fitness Styles and Methodologies At Your Fingertips",
                              style: TextStyle(
                                  fontSize: gs <= 2 ? 14 : (gs <= 5 ? 18 : 21),
                                  fontWeight: FontWeight.w500,
                                  color: appTextColor),
                            ),
                            Text(
                              "An online fitness program on postnatal healing, recovery and fitness. The program is designed to provide a complete solution for mom’s return to fitness. An online fitness program on postnatal healing, recovery and fitness.",
                              style: TextStyle(
                                  fontSize: gs <= 2 ? 10 : (gs <= 5 ? 12 : 14),
                                  fontWeight: FontWeight.w300,
                                  color: appLightTextColor),
                            ),
                          ],
                        ),
                        Container(
                          height: gs <= 2 ? 25 : (gs <= 4 ? 35 : 45),
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                                colors: [
                                  appThemeColor,
                                  appLightThemeColor,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomRight),
                          ),
                          child: Center(
                            child: Text(
                              "Enroll Now",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: appLightColor,
                                  fontSize: size.height * 0.02),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: appLightColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 60,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome to the FitMom Club!",
                          style: TextStyle(
                              fontSize: ((26 * rem) < 16 ? 16 : 26 * rem),
                              fontWeight: FontWeight.w600,
                              color: appDarkColor),
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text(
                                "Get in touch with other Mom’s in exercises, diet and talk while we ensure you and your baby to be born stay healthy baby...",
                                style: TextStyle(
                                    fontSize: ((14 * rem) < 10 ? 10 : 14 * rem),
                                    fontWeight: FontWeight.w300,
                                    color: appLightTextColor),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60.0),
                          child: Center(
                            child: Wrap(
                              spacing: 40,
                              runSpacing: 20,
                              alignment: WrapAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: gs <= 2 ? 250 : (gs <= 4 ? 280 : 300),
                                  width: gs <= 2 ? 200 : (gs <= 4 ? 220 : 250),
                                  decoration: BoxDecoration(
                                    color: appLightColor,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: appTextColor,
                                        blurRadius: 6.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 0.0),
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image(
                                          height: gs <= 2
                                              ? 25
                                              : (gs <= 4 ? 35 : 45),
                                          image: const AssetImage(
                                              "assets/images/img4.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15.0),
                                          child: Text(
                                            "Why Choose Revive",
                                            style: TextStyle(
                                                fontSize: ((14 * rem) < 12
                                                    ? 12
                                                    : 14 * rem),
                                                fontWeight: FontWeight.w600,
                                                color: appDarkColor),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15.0),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "All the sessions are based on recent researches and advances in postnatal healing and fitness. These sessions are conducted by experts in the field of health, fitness and physical therapy. This is a  combination of best exercise practice and breathing principles.",
                                              style: TextStyle(
                                                  height: 1.5,
                                                  fontSize: ((12 * rem) < 10
                                                      ? 10
                                                      : (12 * rem > 14
                                                          ? 14
                                                          : 12 * rem)),
                                                  fontWeight: FontWeight.w300,
                                                  color: appTextColor),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: gs <= 2 ? 270 : (gs <= 4 ? 300 : 350),
                                  width: gs <= 2 ? 200 : (gs <= 4 ? 220 : 250),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: appLightColor,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: appTextColor,
                                        blurRadius: 6.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 0.0),
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image(
                                          height: gs <= 2
                                              ? 25
                                              : (gs <= 4 ? 35 : 45),
                                          image: const AssetImage(
                                              "assets/images/img5.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15.0),
                                          child: Text(
                                            "Our Program",
                                            style: TextStyle(
                                                fontSize: ((16 * rem) < 12
                                                    ? 12
                                                    : 16 * rem),
                                                fontWeight: FontWeight.w600,
                                                color: appDarkColor),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "An online fitness program on postnatal healing, recovery and fitness. The program is designed to provide a complete solution for mom’s return to fitness.The program is structured to incorporate all fundamental principle of exercise science, breathing techniques, postnatal Pilates principles and more.",
                                              style: TextStyle(
                                                  height: 1.5,
                                                  fontSize: ((12 * rem) < 10
                                                      ? 10
                                                      : (12 * rem > 14
                                                          ? 14
                                                          : 12 * rem)),
                                                  fontWeight: FontWeight.w300,
                                                  color: appTextColor),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: gs <= 2 ? 250 : (gs <= 4 ? 280 : 300),
                                  width: gs <= 2 ? 200 : (gs <= 4 ? 220 : 250),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: appLightColor,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: appTextColor,
                                        blurRadius: 6.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(0.0, 0.0),
                                      )
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image(
                                          height: gs <= 2
                                              ? 25
                                              : (gs <= 4 ? 35 : 45),
                                          image: const AssetImage(
                                              "assets/images/img6.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15.0),
                                          child: Text(
                                            "Who is this for?",
                                            style: TextStyle(
                                                fontSize: ((16 * rem) < 12
                                                    ? 12
                                                    : 16 * rem),
                                                fontWeight: FontWeight.w600,
                                                color: appDarkColor),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15.0),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "These group online batches are for all postnatal mothers seeking fitness but unsure how to get started or for mothers who are dealing with health concerns like back pain, neck pain, pelvic pain, sciatica, carpel tunnel syndrome or any similar issue.",
                                              style: TextStyle(
                                                  height: 1.5,
                                                  fontSize: ((12 * rem) < 10
                                                      ? 10
                                                      : (12 * rem > 14
                                                          ? 12
                                                          : 12 * rem)),
                                                  fontWeight: FontWeight.w300,
                                                  color: appTextColor),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: appBgColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 70, horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: gs <= 2 ? 40 : (gs <= 5 ? 50 : 60),
                              width: gs <= 2 ? 40 : (gs <= 5 ? 60 : 80),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: const LinearGradient(
                                    colors: [
                                      appThemeColor,
                                      appLightThemeColor,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomRight),
                              ),
                              child: Center(
                                child: Image(
                                  height: gs <= 2 ? 20 : (gs <= 5 ? 30 : 40),
                                  width: gs <= 2 ? 15 : (gs <= 5 ? 20 : 36),
                                  image: const AssetImage(
                                      "assets/images/img7.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text(
                                "Live Online Classes",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: gs <= 2 ? 9 : (gs <= 5 ? 12 : 14),
                                    fontWeight: FontWeight.w300,
                                    color: appTextColor),
                              ),
                            ),
                            Text(
                              "Every Week",
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: gs <= 2 ? 9 : (gs <= 5 ? 12 : 14),
                                  fontWeight: FontWeight.w300,
                                  color: appTextColor),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: gs <= 2 ? 40 : (gs <= 5 ? 60 : 80),
                              width: gs <= 2 ? 40 : (gs <= 5 ? 60 : 80),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: const LinearGradient(
                                    colors: [
                                      appThemeColor,
                                      appLightThemeColor,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomRight),
                              ),
                              child: Center(
                                child: Image(
                                  height: gs <= 2 ? 20 : (gs <= 5 ? 30 : 40),
                                  width: gs <= 2 ? 15 : (gs <= 5 ? 20 : 36),
                                  image: const AssetImage(
                                      "assets/images/img8.png"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text(
                                "Weekly Pre-Recorded",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: gs <= 2 ? 9 : (gs <= 5 ? 12 : 14),
                                    fontWeight: FontWeight.w300,
                                    color: appTextColor),
                              ),
                            ),
                            Text(
                              "Exercise Videos",
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: gs <= 2 ? 9 : (gs <= 5 ? 12 : 14),
                                  fontWeight: FontWeight.w300,
                                  color: appTextColor),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: gs <= 2 ? 40 : (gs <= 5 ? 60 : 80),
                              width: gs <= 2 ? 40 : (gs <= 5 ? 60 : 80),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: const LinearGradient(
                                    colors: [
                                      appThemeColor,
                                      appLightThemeColor,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomRight),
                              ),
                              child: Center(
                                child: Image(
                                  height: gs <= 2 ? 20 : (gs <= 5 ? 30 : 40),
                                  width: gs <= 2 ? 15 : (gs <= 5 ? 20 : 36),
                                  image: const AssetImage(
                                      "assets/images/img9.png"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text(
                                "1 Feature",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: gs <= 2 ? 9 : (gs <= 5 ? 12 : 14),
                                    fontWeight: FontWeight.w300,
                                    color: appTextColor),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: gs <= 2 ? 40 : (gs <= 5 ? 60 : 80),
                              width: gs <= 2 ? 40 : (gs <= 5 ? 60 : 80),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: const LinearGradient(
                                    colors: [
                                      appThemeColor,
                                      appLightThemeColor,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomRight),
                              ),
                              child: Center(
                                child: Image(
                                  height: gs <= 2 ? 20 : (gs <= 5 ? 30 : 40),
                                  width: gs <= 2 ? 15 : (gs <= 5 ? 20 : 36),
                                  image: const AssetImage(
                                      "assets/images/img10.png"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text(
                                "Attend Sessions At",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: gs <= 2 ? 9 : (gs <= 5 ? 12 : 14),
                                    fontWeight: FontWeight.w300,
                                    color: appTextColor),
                              ),
                            ),
                            Text(
                              "Your Home",
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: gs <= 2 ? 9 : (gs <= 5 ? 12 : 14),
                                  fontWeight: FontWeight.w300,
                                  color: appTextColor),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: gs <= 2 ? 40 : (gs <= 5 ? 50 : 60),
                              width: gs <= 2 ? 40 : (gs <= 5 ? 50 : 60),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: const LinearGradient(
                                    colors: [
                                      appThemeColor,
                                      appLightThemeColor,
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomRight),
                              ),
                              child: Center(
                                child: Image(
                                  height: gs <= 2 ? 20 : (gs <= 5 ? 30 : 40),
                                  width: gs <= 2 ? 15 : (gs <= 5 ? 20 : 36),
                                  image: const AssetImage(
                                      "assets/images/img11.png"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Text(
                                "Meet Other Mom’s",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: gs <= 2 ? 9 : (gs <= 5 ? 12 : 14),
                                    fontWeight: FontWeight.w300,
                                    color: appTextColor),
                              ),
                            ),
                            Text(
                              "Virtually!",
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: gs <= 2 ? 9 : (gs <= 5 ? 12 : 14),
                                  fontWeight: FontWeight.w300,
                                  color: appTextColor),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: appLightColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 60, horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Program Overview",
                          style: TextStyle(
                              fontSize: gs <= 2 ? 16 : (gs <= 5 ? 20 : 26),
                              fontWeight: FontWeight.w600,
                              color: appDarkColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "We offer the best in class fitness program for mom’s at home as well as in the studio",
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: gs <= 2 ? 9 : (gs <= 5 ? 12 : 14),
                                  fontWeight: FontWeight.w300,
                                  color: appLightTextColor),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: gs <= 2 ? 250 : (gs <= 5 ? 300 : 350),
                                width: gs <= 2 ? 200 : (gs <= 5 ? 300 : 500),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/img12.png"),
                                        fit: BoxFit.fill)),
                                // child: Image(

                                //   image: AssetImage("assets/images/img12.png"),
                                //   fit: BoxFit.fill,
                                // ),
                              ),
                              Container(
                                height: gs <= 2 ? 250 : (gs <= 5 ? 300 : 350),
                                width: gs <= 2 ? 200 : (gs <= 5 ? 300 : 500),
                                decoration:
                                    const BoxDecoration(color: appBgColor),
                                child: GridView(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing:
                                              gs <= 2 ? 5 : (gs <= 5 ? 10 : 20),
                                          mainAxisSpacing: gs <= 2
                                              ? 5
                                              : (gs <= 5 ? 10 : 30)),
                                  children: [
                                    SizedBox(
                                      height: 90,
                                      width: 90,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: gs <= 2
                                                ? 40
                                                : (gs <= 5 ? 60 : 70),
                                            width: gs <= 2
                                                ? 40
                                                : (gs <= 5 ? 60 : 70),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                    color: appLightThemeColor,
                                                    width: 1)),
                                            child: const Image(
                                              image: AssetImage(
                                                  "assets/images/img13.png"),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "40+ Hours Of",
                                              style: TextStyle(
                                                  fontSize: size.width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                  color: appLightTextColor),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Content",
                                              style: TextStyle(
                                                  fontSize: size.width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                  color: appLightTextColor),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 90,
                                      width: 90,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: gs <= 2
                                                ? 40
                                                : (gs <= 5 ? 60 : 70),
                                            width: gs <= 2
                                                ? 40
                                                : (gs <= 5 ? 60 : 70),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                    color: appLightThemeColor,
                                                    width: 1)),
                                            child: const Image(
                                              image: AssetImage(
                                                  "assets/images/img13.png"),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "40+ Hours Of",
                                              style: TextStyle(
                                                  fontSize: size.width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                  color: appLightTextColor),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Content",
                                              style: TextStyle(
                                                  fontSize: size.width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                  color: appLightTextColor),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 90,
                                      width: 90,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: gs <= 2
                                                ? 40
                                                : (gs <= 5 ? 60 : 70),
                                            width: gs <= 2
                                                ? 40
                                                : (gs <= 5 ? 60 : 70),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                    color: appLightThemeColor,
                                                    width: 1)),
                                            child: const Image(
                                              image: AssetImage(
                                                  "assets/images/img13.png"),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "40+ Hours Of",
                                              style: TextStyle(
                                                  fontSize: size.width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                  color: appLightTextColor),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Content",
                                              style: TextStyle(
                                                  fontSize: size.width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                  color: appLightTextColor),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 90,
                                      width: 90,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: gs <= 2
                                                ? 40
                                                : (gs <= 5 ? 60 : 70),
                                            width: gs <= 2
                                                ? 40
                                                : (gs <= 5 ? 60 : 70),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                    color: appLightThemeColor,
                                                    width: 1)),
                                            child: const Image(
                                              image: AssetImage(
                                                  "assets/images/img13.png"),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "40+ Hours Of",
                                              style: TextStyle(
                                                  fontSize: size.width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                  color: appLightTextColor),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Content",
                                              style: TextStyle(
                                                  fontSize: size.width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                  color: appLightTextColor),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 90,
                                      width: 90,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: gs <= 2
                                                ? 40
                                                : (gs <= 5 ? 60 : 70),
                                            width: gs <= 2
                                                ? 40
                                                : (gs <= 5 ? 60 : 70),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                    color: appLightThemeColor,
                                                    width: 1)),
                                            child: const Image(
                                              image: AssetImage(
                                                  "assets/images/img13.png"),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "40+ Hours Of",
                                              style: TextStyle(
                                                  fontSize: size.width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                  color: appLightTextColor),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Content",
                                              style: TextStyle(
                                                  fontSize: size.width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                  color: appLightTextColor),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 90,
                                      width: 90,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: gs <= 2
                                                ? 40
                                                : (gs <= 5 ? 60 : 70),
                                            width: gs <= 2
                                                ? 40
                                                : (gs <= 5 ? 60 : 70),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                    color: appLightThemeColor,
                                                    width: 1)),
                                            child: const Image(
                                              image: AssetImage(
                                                  "assets/images/img13.png"),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "40+ Hours Of",
                                              style: TextStyle(
                                                  fontSize: size.width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                  color: appLightTextColor),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Content",
                                              style: TextStyle(
                                                  fontSize: size.width * 0.01,
                                                  fontWeight: FontWeight.w300,
                                                  color: appLightTextColor),
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
                      ],
                    ),
                  ),
                ),
                Container(
                  color: appBgColor,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 30, 8, 10),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.spaceBetween,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          height: 120,
                          width: gs <= 2 ? 100 : (gs <= 4 ? 120 : 180),
                          image: const AssetImage("assets/images/img14.png"),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Variety of Fitness Styles and Methodologies At Your Fingertips",
                              style: TextStyle(
                                  fontSize: gs <= 2
                                      ? size.width * 0.021
                                      : (gs <= 5
                                          ? size.width * 0.019
                                          : size.width * 0.012),
                                  fontWeight: FontWeight.w500,
                                  color: appTextColor),
                            ),
                            Text(
                              "An online fitness program on postnatal healing, recovery and fitness. The program is designed to provide a complete solution for mom’s return to fitness. An online fitness program on postnatal healing, recovery and fitness.",
                              style: TextStyle(
                                  fontSize: gs <= 2
                                      ? size.width * 0.02
                                      : (gs <= 5
                                          ? size.width * 0.015
                                          : size.width * 0.01),
                                  fontWeight: FontWeight.w300,
                                  color: appLightTextColor),
                            ),
                            // Text(
                            //   "solution for mom’s return to fitness. An online fitness program on postnatal healing, recovery and fitness.",
                            //   style: TextStyle(
                            //       fontSize: size.width * 0.005,
                            //       fontWeight: FontWeight.w300,
                            //       color: appLightTextColor),
                            // ),
                          ],
                        ),
                        Container(
                          height: gs <= 2 ? 25 : (gs <= 4 ? 35 : 45),
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                                colors: [
                                  appThemeColor,
                                  appLightThemeColor,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomRight),
                          ),
                          child: Center(
                            child: Text(
                              "Enroll Now",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: appLightColor,
                                  fontSize: size.height * 0.02),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: appLightColor,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 30, 8, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Hear From Our Experienced Mothers",
                            style: TextStyle(
                                fontSize: gs <= 2
                                    ? size.width * 0.03
                                    : (gs <= 5
                                        ? size.width * 0.025
                                        : size.width * 0.019),
                                fontWeight: FontWeight.w600,
                                color: appDarkColor),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Wrap(
                              runSpacing: 15,
                              spacing: 10,
                              runAlignment: WrapAlignment.spaceBetween,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: gs <= 2 ? 160 : (gs <= 4 ? 200 : 225),
                                  width: gs <= 2 ? 200 : (gs <= 4 ? 220 : 240),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/img15.png"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Container(
                                  height: gs <= 2 ? 180 : (gs <= 4 ? 230 : 250),
                                  width: gs <= 2 ? 300 : (gs <= 4 ? 400 : 500),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: gs <= 2 ? 120 : 150,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            bottomLeft: Radius.circular(8),
                                          ),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/img16.png"),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Pre-natal and Post-partum depression",
                                              style: TextStyle(
                                                  fontSize: gs <= 2
                                                      ? 7
                                                      : (gs <= 5 ? 9 : 12),
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor),
                                            ),
                                            Text(
                                              "are leading risks seen among women during",
                                              style: TextStyle(
                                                  fontSize: gs <= 2
                                                      ? 7
                                                      : (gs <= 5 ? 9 : 12),
                                                  fontWeight: FontWeight.w500,
                                                  color: appTextColor),
                                            ),
                                            Text(
                                              "and after pregnancy.These topics have often been",
                                              style: TextStyle(
                                                  fontSize: gs <= 2
                                                      ? 7
                                                      : (gs <= 5 ? 9 : 12),
                                                  fontWeight: FontWeight.w500,
                                                  color: appTextColor),
                                            ),
                                            Text(
                                              "overlooked,but we provide the right support,available",
                                              style: TextStyle(
                                                  fontSize: gs <= 2
                                                      ? 7
                                                      : (gs <= 5 ? 9 : 12),
                                                  fontWeight: FontWeight.w500,
                                                  color: appTextColor),
                                            ),
                                            Text(
                                              "to you just a click away.",
                                              style: TextStyle(
                                                  fontSize: gs <= 2
                                                      ? 7
                                                      : (gs <= 5 ? 9 : 12),
                                                  fontWeight: FontWeight.w500,
                                                  color: appTextColor),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: Text(
                                                "Anjali Singh ",
                                                style: TextStyle(
                                                    fontSize: gs <= 2
                                                        ? 12
                                                        : (gs <= 5 ? 14 : 16),
                                                    fontWeight: FontWeight.w700,
                                                    color: appDarkColor),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: gs <= 2 ? 160 : (gs <= 4 ? 200 : 225),
                                  width: gs <= 2 ? 200 : (gs <= 4 ? 220 : 240),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/img17.png"),
                                        fit: BoxFit.cover),
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
                Container(
                  color: appBgColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image(
                          height: 380,
                          width: gs <= 2 ? 200 : (gs <= 5 ? 300 : 500),
                          image: const AssetImage("assets/images/img18.png"),
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Sign Up For Our Classes",
                                style: TextStyle(
                                    fontSize: size.width * 0.03,
                                    fontWeight: FontWeight.w600,
                                    color: appDarkColor),
                              ),
                              Text(
                                "Do you have any questions or inquiries? Get in touch with us..",
                                style: TextStyle(
                                    fontSize: size.width * 0.015,
                                    fontWeight: FontWeight.w300,
                                    color: appLightTextColor),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Wrap(
                                  runSpacing: 10,
                                  runAlignment: WrapAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 250,
                                      decoration: const BoxDecoration(
                                          color: appLightColor,
                                          border: Border(
                                            left: BorderSide(
                                                color: appThemeColor, width: 1),
                                          )),
                                      child: Expanded(
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                              hintText: "First Name",
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 250,
                                      decoration: const BoxDecoration(
                                          color: appLightColor,
                                          border: Border(
                                            left: BorderSide(
                                                color: appThemeColor, width: 1),
                                          )),
                                      child: Expanded(
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                              hintText: "Last Name",
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Wrap(
                                  runSpacing: 10,
                                  runAlignment: WrapAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 250,
                                      decoration: const BoxDecoration(
                                          color: appLightColor,
                                          border: Border(
                                            left: BorderSide(
                                                color: appThemeColor, width: 1),
                                          )),
                                      child: Expanded(
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                              hintText: "Mobile Number",
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 250,
                                      decoration: const BoxDecoration(
                                          color: appLightColor,
                                          border: Border(
                                            left: BorderSide(
                                                color: appThemeColor, width: 1),
                                          )),
                                      child: Expanded(
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                              hintText: "Location",
                                              border: InputBorder.none),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  height: 60,
                                  decoration: const BoxDecoration(
                                      color: appLightColor,
                                      border: Border(
                                        left: BorderSide(
                                            color: appThemeColor, width: 1),
                                      )),
                                  child: Expanded(
                                    child: TextFormField(
                                      maxLines: 4,
                                      minLines: 3,
                                      keyboardType: TextInputType.multiline,
                                      decoration: const InputDecoration(
                                          hintText: "Message",
                                          border: InputBorder.none),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const RegistrationPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: gs <= 2 ? 25 : (gs <= 4 ? 35 : 45),
                                    width: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      gradient: const LinearGradient(
                                          colors: [
                                            appThemeColor,
                                            appLightThemeColor,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomRight),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Send Enquiry",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: appLightColor,
                                            fontSize: size.height * 0.02),
                                      ),
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
                ),
                Container(
                  color: appLightColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Your First 14 Days Are On Us!",
                          style: TextStyle(
                              fontSize: gs <= 2
                                  ? size.width * 0.03
                                  : (gs <= 5
                                      ? size.width * 0.025
                                      : size.width * 0.019),
                              fontWeight: FontWeight.w600,
                              color: appDarkColor),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "No charge for 14 days, Use at your ease and pay annually or monthly to continue your subscription with us!",
                            style: TextStyle(
                                fontSize: gs <= 2
                                    ? size.width * 0.02
                                    : (gs <= 5
                                        ? size.width * 0.015
                                        : size.width * 0.01),
                                fontWeight: FontWeight.w300,
                                color: appLightTextColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Wrap(
                            spacing: 15,
                            runSpacing: 10,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 320,
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: appLightColor,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0xffDDDDDD),
                                      blurRadius: 6.0,
                                      spreadRadius: 2.0,
                                      offset: Offset(0.0, 0.0),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 320,
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: appLightColor,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0xffDDDDDD),
                                      blurRadius: 6.0,
                                      spreadRadius: 2.0,
                                      offset: Offset(0.0, 0.0),
                                    )
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
