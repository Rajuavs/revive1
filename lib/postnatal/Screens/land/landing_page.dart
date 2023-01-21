import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:revive/Utils/get_gridsize.dart';
import 'package:revive/Utils/gradient_button.dart';

import '../../../Utils/constants.dart';
// import 'expandable_list.dart';
import '../../../Utils/get_image.dart';
import '../../../Utils/rfooter.dart';
import '../expandable_list.dart';

import 'sendequery.dart';

class PostLandingPage extends StatefulWidget {
  const PostLandingPage({Key? key}) : super(key: key);

  @override
  State<PostLandingPage> createState() => _PostLandingPageState();
}

class _PostLandingPageState extends State<PostLandingPage> {
  Map gsw = {};
  int gs = 1;
  double screenWidth = 0.0;
  double baseWidth = 0.0;
  double fem = 0.0;
  double rem = 0.0;
  double caboxW = 250.0;
  double tLnHt = 1;
  late TextStyle stle1;

  @override
  Widget build(BuildContext context) {
    // screenWidth = MediaQuery.of(context).size.width;
    // Size size = MediaQuery.of(context).size;
    // double screenHeight = MediaQuery.of(context).size.height;
    print(80 * fem);
    gsw = getGridSize(context);
    baseWidth = gsw["bw"];
    gs = gsw["gs"];
    screenWidth = gsw["w"];
    screenWidth = screenWidth > baseWidth ? baseWidth : screenWidth;
    fem = gsw["fem"];
    rem = gsw["ffem"];
    tLnHt = gsw["tLnHt"];
    print(gsw);
    // print("gsgs $gs $screenWidth"); testing

    // rem = screenWidth / 1280 * 0.97; landing
    Map<String, String> imgHeader = {"Access-Control-Allow-Origin": "*"};
    stle1 = TextStyle(
        fontSize: 15 * rem, fontWeight: FontWeight.w500, color: c797979);
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: appLightColor),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  // height: 500 * fem,
                  width: double.maxFinite,
                  // ignore: prefer_const_constructors
                  constraints: BoxConstraints(maxHeight: 420, minHeight: 300),
                  // color: Colors.amber.shade100,
                  // decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        // left: gs <= 2 ? 100 : (gs <= 5 ? 300 : 430),
                        right: 0.0,
                        top: 0.0,
                        bottom: 0.0,
                        child: Container(
                          height: double.maxFinite,
                          // decoration: BoxDecoration(
                          //   image: DecorationImage(
                          //       image: NetworkImage(
                          //           "https://jaspertech.xyz/review/images/po/img2.png",
                          //           headers: imgHeader)),
                          // ),
                          child: getImageFitbox(
                              "https://jaspertech.xyz/review/images/po/img2.png",
                              BoxFit.fill,
                              null,
                              null),
                        ),
                      ),
                      Positioned(
                        left: 0.0,
                        // right: 150,
                        top: 0.0,
                        child: Container(
                          height: double.maxFinite,
                          // constraints: const BoxConstraints(
                          //   maxHeight: 450,
                          //   minHeight: 300,
                          // ),
                          // https://github.com/Rajuavs/revive.git revive

                          // height: 300 * (0.1 * gs),
                          // height: (gs <= 5 ? 400 : 500),
                          // height: gs<=2? 280 : (gs<= 5 ?250 : 200),

                          // height: screenWidth * 0.7,
                          // width: screenWidth * 0.6,
                          // decoration: const BoxDecoration(
                          //   // gradient: LinearGradient(
                          //   //     colors: [
                          //   //       Color.fromRGBO(235, 235, 235, 1),
                          //   //       Color.fromRGBO(232, 232, 232, 0),
                          //   //     ],
                          //   //     begin: Alignment.centerLeft,
                          //   //     end: Alignment.centerRight),
                          // ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 30, horizontal: 80),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Image(
                                    image: const AssetImage(
                                        "assets/icons/logo.png"),
                                    // fit: BoxFit.cover,
                                    width: 130 * fem,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 50.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Recover Your Fitness At The Ease Of Your",
                                              style: TextStyle(
                                                  fontSize: 26 * rem,
                                                  fontWeight: FontWeight.w700,
                                                  color: appDarkColor),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5.0),
                                              child: Text(
                                                "Home With Us!",
                                                style: TextStyle(
                                                    fontSize: 26 * rem,
                                                    fontWeight: FontWeight.w700,
                                                    color: appDarkColor),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Text(
                                          "Make Your Post-Partum Journey Memorable...",
                                          style: TextStyle(
                                              fontSize: 18 * rem,
                                              fontWeight: FontWeight.w600,
                                              color: appTextColor),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 12.0),
                                        child: Text(
                                          "Every post-partum experience is unique, Let us help you recover and heal!",
                                          style: TextStyle(
                                              fontSize: 14 * rem,
                                              fontWeight: FontWeight.w400,
                                              color: appLightTextColor),
                                        ),
                                      ),
                                      SizedBox(height: 38 * fem),
                                      JButtons.gradienButton(
                                          context: context,
                                          onPressed: (v) {},
                                          data: {"label": "Start Free Trail"})
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
                              alignment: gs < 3
                                  ? WrapAlignment.center
                                  : WrapAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: gs <= 2 ? 250 : (gs <= 4 ? 280 : 300),
                                  width: gs <= 2 ? 200 : (gs <= 4 ? 220 : 250),
                                  decoration: BoxDecoration(
                                    color: appLightColor,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: appGreyColor,
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
                                              "assets/icons/img4.png"),
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
                                        color: appGreyColor,
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
                                              "assets/icons/img5.png"),
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
                                    boxShadow: [
                                      const BoxShadow(
                                        color: appGreyColor,
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
                                              "assets/icons/img6.png"),
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
                  width: double.infinity,
                  color: appBgColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 60, horizontal: 60),
                    child: Wrap(
                      runSpacing: 20,
                      alignment: WrapAlignment.spaceEvenly,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: gs <= 2 ? 40 : (gs <= 5 ? 50 : 60),
                              width: gs <= 2 ? 40 : (gs <= 5 ? 50 : 60),
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
                                child: Image(
                                  height: gs <= 2 ? 20 : (gs <= 5 ? 30 : 40),
                                  width: gs <= 2 ? 15 : (gs <= 5 ? 20 : 36),
                                  image: const AssetImage(
                                      "assets/icons/television.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                "Live Online Classes",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: ((14 * rem) < 10 ? 10 : 14 * rem),
                                    fontWeight: FontWeight.w300,
                                    color: appTextColor),
                              ),
                            ),
                            Text(
                              "Every Week",
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: ((14 * rem) < 10 ? 10 : 14 * rem),
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
                                child: Image(
                                  height: gs <= 2 ? 20 : (gs <= 5 ? 30 : 40),
                                  width: gs <= 2 ? 15 : (gs <= 5 ? 20 : 36),
                                  image: const AssetImage(
                                      "assets/icons/streaming.png"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                "Weekly Pre-Recorded",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: ((14 * rem) < 10 ? 10 : 14 * rem),
                                    fontWeight: FontWeight.w300,
                                    color: appTextColor),
                              ),
                            ),
                            Text(
                              "Exercise Videos",
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: ((14 * rem) < 10 ? 10 : 14 * rem),
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
                                child: Image(
                                  height: gs <= 2 ? 20 : (gs <= 5 ? 30 : 40),
                                  width: gs <= 2 ? 15 : (gs <= 5 ? 20 : 36),
                                  image:
                                      const AssetImage("assets/icons/care.png"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                "Spend More Time With",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: ((14 * rem) < 10 ? 10 : 14 * rem),
                                    fontWeight: FontWeight.w300,
                                    color: appTextColor),
                              ),
                            ),
                            Text(
                              "Your Little One",
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: ((14 * rem) < 10 ? 10 : 14 * rem),
                                  fontWeight: FontWeight.w300,
                                  color: appTextColor),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: gs <= 2 ? 40 : (gs <= 5 ? 50 : 60),
                              width: gs <= 2 ? 40 : (gs <= 5 ? 50 : 60),
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
                                child: Image(
                                  height: gs <= 2 ? 20 : (gs <= 5 ? 30 : 40),
                                  width: gs <= 2 ? 15 : (gs <= 5 ? 20 : 36),
                                  image:
                                      const AssetImage("assets/icons/home.png"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                "Attend Sessions At",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: ((14 * rem) < 10 ? 10 : 14 * rem),
                                    fontWeight: FontWeight.w300,
                                    color: appTextColor),
                              ),
                            ),
                            Text(
                              "Your Home",
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: ((14 * rem) < 10 ? 10 : 14 * rem),
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
                                child: Image(
                                  height: gs <= 2 ? 20 : (gs <= 5 ? 30 : 40),
                                  width: gs <= 2 ? 15 : (gs <= 5 ? 20 : 36),
                                  image: const AssetImage(
                                      "assets/icons/discussion.png"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                "Meet Other Mom’s",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: ((14 * rem) < 10 ? 10 : 14 * rem),
                                    fontWeight: FontWeight.w300,
                                    color: appTextColor),
                              ),
                            ),
                            Text(
                              "Virtually!",
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: ((14 * rem) < 10 ? 10 : 14 * rem),
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
                        horizontal: 80, vertical: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Program Overview",
                          style: TextStyle(
                              fontSize: ((26 * rem) < 16 ? 16 : 26 * rem),
                              fontWeight: FontWeight.w600,
                              color: appDarkColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Our Program is planned perfectly to suit you and your busy schedule and also our recorded sessions help you attend the classes anytime.",
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: ((14 * rem) < 10 ? 10 : 14 * rem),
                                  fontWeight: FontWeight.w300,
                                  color: appLightTextColor),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 80.0),
                          child: BsRow(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                child: Container(
                                    height:
                                        gs <= 2 ? 250 : (gs <= 5 ? 300 : 350),
                                    width:
                                        gs <= 2 ? 200 : (gs <= 5 ? 300 : 500),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      // image: DecorationImage(
                                      //   image: NetworkImage(
                                      //       "https://jaspertech.xyz/review/images/po/general-info.png",
                                      //       headers: imgHeader),
                                      //   onError: (exception, stackTrace) {
                                      //     debugPrint("imgloadingerror");
                                      //   },
                                      // ),
                                    ),
                                    child: getImageFitbox(
                                        "https://jaspertech.xyz/review/images/po/general-info.png",
                                        BoxFit.fill,
                                        null,
                                        null)),
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
                                child: Container(
                                  height: gs <= 2 ? 250 : (gs <= 5 ? 300 : 350),
                                  width: gs <= 2 ? 200 : (gs <= 5 ? 300 : 500),
                                  decoration:
                                      const BoxDecoration(color: appLightColor),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Wrap(
                                          // spacing: 30,
                                          runSpacing: 20,
                                          alignment: WrapAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              height: 130,
                                              width: 120,
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
                                                      color: appLightColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: appGreyColor,
                                                          blurRadius: 6.0,
                                                          spreadRadius: 2.0,
                                                          offset:
                                                              Offset(0.0, 0.0),
                                                        )
                                                      ],
                                                    ),
                                                    child: const Image(
                                                      // height: gs <= 2
                                                      //     ? 20
                                                      //     : (gs <= 5 ? 30 : 40),
                                                      // width: gs <= 2
                                                      //     ? 20
                                                      //     : (gs <= 5 ? 30 : 34),
                                                      image: AssetImage(
                                                          "assets/icons/img13.png"),
                                                      // fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10.0),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "Breathing &\nRelaxation",
                                                        style: TextStyle(
                                                            height: 1.5,
                                                            fontSize:
                                                                ((14 * rem) < 10
                                                                    ? 10
                                                                    : 14 * rem),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                appThemeColor),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 130,
                                              width: 120,
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
                                                      color: appLightColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: appGreyColor,
                                                          blurRadius: 6.0,
                                                          spreadRadius: 2.0,
                                                          offset:
                                                              Offset(0.0, 0.0),
                                                        )
                                                      ],
                                                    ),
                                                    child: const Image(
                                                      image: AssetImage(
                                                          "assets/icons/img14.png"),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10.0),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "Pelvic Floor",
                                                        style: TextStyle(
                                                            height: 1.5,
                                                            fontSize:
                                                                ((14 * rem) < 10
                                                                    ? 10
                                                                    : 14 * rem),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                appThemeColor),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "Exercises",
                                                      style: TextStyle(
                                                          height: 1.5,
                                                          fontSize:
                                                              ((14 * rem) < 10
                                                                  ? 10
                                                                  : 14 * rem),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: appThemeColor),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 130,
                                              width: 120,
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
                                                          BorderRadius.circular(
                                                              12),
                                                      color: appLightColor,
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          color: appGreyColor,
                                                          blurRadius: 6.0,
                                                          spreadRadius: 2.0,
                                                          offset:
                                                              Offset(0.0, 0.0),
                                                        )
                                                      ],
                                                    ),
                                                    child: const Image(
                                                      image: AssetImage(
                                                          "assets/icons/img15.png"),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10.0),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "Spinal Mobility",
                                                        style: TextStyle(
                                                            height: 1.5,
                                                            fontSize:
                                                                ((14 * rem) < 10
                                                                    ? 10
                                                                    : 14 * rem),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                appThemeColor),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "Exercises",
                                                      style: TextStyle(
                                                          height: 1.5,
                                                          fontSize:
                                                              ((14 * rem) < 10
                                                                  ? 10
                                                                  : 14 * rem),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: appThemeColor),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 30.0),
                                          child: Wrap(
                                            // spacing: 30,
                                            runSpacing: 20,
                                            alignment:
                                                WrapAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                height: 130,
                                                width: 120,
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
                                                            BorderRadius
                                                                .circular(12),
                                                        color: appLightColor,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            color: appGreyColor,
                                                            blurRadius: 6.0,
                                                            spreadRadius: 2.0,
                                                            offset: Offset(
                                                                0.0, 0.0),
                                                          )
                                                        ],
                                                      ),
                                                      child: const Image(
                                                        image: AssetImage(
                                                            "assets/icons/img16.png"),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10.0),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                          "Core Muscle",
                                                          style: TextStyle(
                                                              height: 1.5,
                                                              fontSize: ((14 *
                                                                          rem) <
                                                                      10
                                                                  ? 10
                                                                  : 14 * rem),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  appThemeColor),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "Activation",
                                                        style: TextStyle(
                                                            height: 1.5,
                                                            fontSize:
                                                                ((14 * rem) < 10
                                                                    ? 10
                                                                    : 14 * rem),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                appThemeColor),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 130,
                                                width: 120,
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
                                                            BorderRadius
                                                                .circular(12),
                                                        color: appLightColor,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            color: appGreyColor,
                                                            blurRadius: 6.0,
                                                            spreadRadius: 2.0,
                                                            offset: Offset(
                                                                0.0, 0.0),
                                                          )
                                                        ],
                                                      ),
                                                      child: const Image(
                                                        image: AssetImage(
                                                            "assets/icons/img17.png"),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10.0),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                          "Posture Corre-",
                                                          style: TextStyle(
                                                              fontSize: ((14 *
                                                                          rem) <
                                                                      10
                                                                  ? 10
                                                                  : 14 * rem),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  appThemeColor),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "ction Exercises",
                                                        style: TextStyle(
                                                            fontSize:
                                                                ((14 * rem) < 10
                                                                    ? 10
                                                                    : 14 * rem),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                appThemeColor),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 130,
                                                width: 120,
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
                                                            BorderRadius
                                                                .circular(12),
                                                        color: appLightColor,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            color: appGreyColor,
                                                            blurRadius: 6.0,
                                                            spreadRadius: 2.0,
                                                            offset: Offset(
                                                                0.0, 0.0),
                                                          )
                                                        ],
                                                      ),
                                                      child: const Image(
                                                        image: AssetImage(
                                                            "assets/icons/img18.png"),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10.0),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                          "Toning & Much",
                                                          style: TextStyle(
                                                              fontSize: ((14 *
                                                                          rem) <
                                                                      10
                                                                  ? 10
                                                                  : 14 * rem),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  appThemeColor),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "More...",
                                                        style: TextStyle(
                                                            fontSize:
                                                                ((14 * rem) < 10
                                                                    ? 10
                                                                    : 14 * rem),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                appThemeColor),
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
                                  // child: GridView(
                                  //   gridDelegate:
                                  //       SliverGridDelegateWithFixedCrossAxisCount(
                                  //     crossAxisCount: 3,
                                  //     // crossAxisSpacing:
                                  //     //     gs <= 2 ? 5 : (gs <= 5 ? 10 : 30),
                                  //     // mainAxisSpacing: gs <= 2
                                  //     //     ? 5
                                  //     //     : (gs <= 5 ? 10 : 30),
                                  //   ),
                                  //   shrinkWrap: true,
                                  //   children: [
                                  //     SizedBox(
                                  //       height: 130,
                                  //       width: 120,
                                  //       child: Column(
                                  //         mainAxisAlignment:
                                  //             MainAxisAlignment.center,
                                  //         children: [
                                  //           Container(
                                  //             height: gs <= 2
                                  //                 ? 40
                                  //                 : (gs <= 5 ? 60 : 70),
                                  //             width: gs <= 2
                                  //                 ? 40
                                  //                 : (gs <= 5 ? 60 : 70),
                                  //             decoration: BoxDecoration(
                                  //               color: appLightColor,
                                  //               borderRadius:
                                  //                   BorderRadius.circular(12),
                                  //               boxShadow: [
                                  //                 BoxShadow(
                                  //                   color: appGreyColor,
                                  //                   blurRadius: 6.0,
                                  //                   spreadRadius: 2.0,
                                  //                   offset: Offset(0.0, 0.0),
                                  //                 )
                                  //               ],
                                  //             ),
                                  //             child: Image(
                                  //               image: AssetImage(
                                  //                   "assets/images/img13.png"),
                                  //             ),
                                  //           ),
                                  //           Padding(
                                  //             padding: const EdgeInsets.only(
                                  //                 top: 10.0),
                                  //             child: Align(
                                  //               alignment: Alignment.center,
                                  //               child: Text(
                                  //                 "Breathing &",
                                  //                 style: TextStyle(
                                  //                     height: 1.5,
                                  //                     fontSize: gs <= 2
                                  //                         ? 9
                                  //                         : (gs <= 5
                                  //                             ? 12
                                  //                             : 14),
                                  //                     fontWeight:
                                  //                         FontWeight.w600,
                                  //                     color: appThemeColor),
                                  //               ),
                                  //             ),
                                  //           ),
                                  //           Align(
                                  //             alignment: Alignment.center,
                                  //             child: Text(
                                  //               "Relaxation",
                                  //               style: TextStyle(
                                  //                   height: 1.5,
                                  //                   fontSize: gs <= 2
                                  //                       ? 9
                                  //                       : (gs <= 5 ? 12 : 14),
                                  //                   fontWeight:
                                  //                       FontWeight.w600,
                                  //                   color: appThemeColor),
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //     SizedBox(
                                  //       height: 120,
                                  //       width: 120,
                                  //       child: Column(
                                  //         mainAxisAlignment:
                                  //             MainAxisAlignment.center,
                                  //         children: [
                                  //           Container(
                                  //             height: gs <= 2
                                  //                 ? 40
                                  //                 : (gs <= 5 ? 60 : 70),
                                  //             width: gs <= 2
                                  //                 ? 40
                                  //                 : (gs <= 5 ? 60 : 70),
                                  //             decoration: BoxDecoration(
                                  //               color: appLightColor,
                                  //               borderRadius:
                                  //                   BorderRadius.circular(12),
                                  //               boxShadow: [
                                  //                 BoxShadow(
                                  //                   color: appGreyColor,
                                  //                   blurRadius: 6.0,
                                  //                   spreadRadius: 2.0,
                                  //                   offset: Offset(0.0, 0.0),
                                  //                 )
                                  //               ],
                                  //             ),
                                  //             child: Image(
                                  //               image: AssetImage(
                                  //                   "assets/images/img14.png"),
                                  //             ),
                                  //           ),
                                  //           Padding(
                                  //             padding: const EdgeInsets.only(
                                  //                 top: 10.0),
                                  //             child: Align(
                                  //               alignment: Alignment.center,
                                  //               child: Text(
                                  //                 "Pelvic Floor",
                                  //                 style: TextStyle(
                                  //                     height: 1.5,
                                  //                     fontSize: gs <= 2
                                  //                         ? 9
                                  //                         : (gs <= 5
                                  //                             ? 12
                                  //                             : 14),
                                  //                     fontWeight:
                                  //                         FontWeight.w600,
                                  //                     color: appThemeColor),
                                  //               ),
                                  //             ),
                                  //           ),
                                  //           Align(
                                  //             alignment: Alignment.center,
                                  //             child: Text(
                                  //               "Exercises",
                                  //               style: TextStyle(
                                  //                   height: 1.5,
                                  //                   fontSize: gs <= 2
                                  //                       ? 9
                                  //                       : (gs <= 5 ? 12 : 14),
                                  //                   fontWeight:
                                  //                       FontWeight.w600,
                                  //                   color: appThemeColor),
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //     SizedBox(
                                  //       height: 120,
                                  //       width: 120,
                                  //       child: Column(
                                  //         mainAxisAlignment:
                                  //             MainAxisAlignment.center,
                                  //         children: [
                                  //           Container(
                                  //             height: gs <= 2
                                  //                 ? 40
                                  //                 : (gs <= 5 ? 60 : 70),
                                  //             width: gs <= 2
                                  //                 ? 40
                                  //                 : (gs <= 5 ? 60 : 70),
                                  //             decoration: BoxDecoration(
                                  //               borderRadius:
                                  //                   BorderRadius.circular(12),
                                  //               color: appLightColor,
                                  //               boxShadow: [
                                  //                 BoxShadow(
                                  //                   color: appGreyColor,
                                  //                   blurRadius: 6.0,
                                  //                   spreadRadius: 2.0,
                                  //                   offset: Offset(0.0, 0.0),
                                  //                 )
                                  //               ],
                                  //             ),
                                  //             child: Image(
                                  //               image: AssetImage(
                                  //                   "assets/images/img15.png"),
                                  //             ),
                                  //           ),
                                  //           Padding(
                                  //             padding: const EdgeInsets.only(
                                  //                 top: 10.0),
                                  //             child: Align(
                                  //               alignment: Alignment.center,
                                  //               child: Text(
                                  //                 "Spinal Mobility",
                                  //                 style: TextStyle(
                                  //                     height: 1.5,
                                  //                     fontSize: gs <= 2
                                  //                         ? 9
                                  //                         : (gs <= 5
                                  //                             ? 12
                                  //                             : 14),
                                  //                     fontWeight:
                                  //                         FontWeight.w600,
                                  //                     color: appThemeColor),
                                  //               ),
                                  //             ),
                                  //           ),
                                  //           Align(
                                  //             alignment: Alignment.center,
                                  //             child: Text(
                                  //               "Exercises",
                                  //               style: TextStyle(
                                  //                   height: 1.5,
                                  //                   fontSize: gs <= 2
                                  //                       ? 9
                                  //                       : (gs <= 5 ? 12 : 14),
                                  //                   fontWeight:
                                  //                       FontWeight.w600,
                                  //                   color: appThemeColor),
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //     SizedBox(
                                  //       height: 120,
                                  //       width: 120,
                                  //       child: Column(
                                  //         mainAxisAlignment:
                                  //             MainAxisAlignment.center,
                                  //         children: [
                                  //           Container(
                                  //             height: gs <= 2
                                  //                 ? 40
                                  //                 : (gs <= 5 ? 60 : 70),
                                  //             width: gs <= 2
                                  //                 ? 40
                                  //                 : (gs <= 5 ? 60 : 70),
                                  //             decoration: BoxDecoration(
                                  //               borderRadius:
                                  //                   BorderRadius.circular(12),
                                  //               color: appLightColor,
                                  //               boxShadow: [
                                  //                 BoxShadow(
                                  //                   color: appGreyColor,
                                  //                   blurRadius: 6.0,
                                  //                   spreadRadius: 2.0,
                                  //                   offset: Offset(0.0, 0.0),
                                  //                 )
                                  //               ],
                                  //             ),
                                  //             child: Image(
                                  //               image: AssetImage(
                                  //                   "assets/images/img16.png"),
                                  //             ),
                                  //           ),
                                  //           Padding(
                                  //             padding: const EdgeInsets.only(
                                  //                 top: 10.0),
                                  //             child: Align(
                                  //               alignment: Alignment.center,
                                  //               child: Text(
                                  //                 "Core Muscle",
                                  //                 style: TextStyle(
                                  //                     height: 1.5,
                                  //                     fontSize: gs <= 2
                                  //                         ? 9
                                  //                         : (gs <= 5
                                  //                             ? 12
                                  //                             : 14),
                                  //                     fontWeight:
                                  //                         FontWeight.w600,
                                  //                     color: appThemeColor),
                                  //               ),
                                  //             ),
                                  //           ),
                                  //           Align(
                                  //             alignment: Alignment.center,
                                  //             child: Text(
                                  //               "Activation",
                                  //               style: TextStyle(
                                  //                   height: 1.5,
                                  //                   fontSize: gs <= 2
                                  //                       ? 9
                                  //                       : (gs <= 5 ? 12 : 14),
                                  //                   fontWeight:
                                  //                       FontWeight.w600,
                                  //                   color: appThemeColor),
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //     SizedBox(
                                  //       height: 120,
                                  //       width: 120,
                                  //       child: Column(
                                  //         mainAxisAlignment:
                                  //             MainAxisAlignment.center,
                                  //         children: [
                                  //           Container(
                                  //             height: gs <= 2
                                  //                 ? 40
                                  //                 : (gs <= 5 ? 60 : 70),
                                  //             width: gs <= 2
                                  //                 ? 40
                                  //                 : (gs <= 5 ? 60 : 70),
                                  //             decoration: BoxDecoration(
                                  //               borderRadius:
                                  //                   BorderRadius.circular(12),
                                  //               color: appLightColor,
                                  //               boxShadow: [
                                  //                 BoxShadow(
                                  //                   color: appGreyColor,
                                  //                   blurRadius: 6.0,
                                  //                   spreadRadius: 2.0,
                                  //                   offset: Offset(0.0, 0.0),
                                  //                 )
                                  //               ],
                                  //             ),
                                  //             child: Image(
                                  //               image: AssetImage(
                                  //                   "assets/images/img17.png"),
                                  //             ),
                                  //           ),
                                  //           Padding(
                                  //             padding: const EdgeInsets.only(
                                  //                 top: 10.0),
                                  //             child: Align(
                                  //               alignment: Alignment.center,
                                  //               child: Text(
                                  //                 "Posture Corre-",
                                  //                 style: TextStyle(
                                  //                     fontSize: gs <= 2
                                  //                         ? 9
                                  //                         : (gs <= 5
                                  //                             ? 12
                                  //                             : 14),
                                  //                     fontWeight:
                                  //                         FontWeight.w600,
                                  //                     color: appThemeColor),
                                  //               ),
                                  //             ),
                                  //           ),
                                  //           Align(
                                  //             alignment: Alignment.center,
                                  //             child: Text(
                                  //               "ction Exercises",
                                  //               style: TextStyle(
                                  //                   fontSize: gs <= 2
                                  //                       ? 9
                                  //                       : (gs <= 5 ? 12 : 14),
                                  //                   fontWeight:
                                  //                       FontWeight.w600,
                                  //                   color: appThemeColor),
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //     SizedBox(
                                  //       height: 120,
                                  //       width: 120,
                                  //       child: Column(
                                  //         mainAxisAlignment:
                                  //             MainAxisAlignment.center,
                                  //         children: [
                                  //           Container(
                                  //             height: gs <= 2
                                  //                 ? 40
                                  //                 : (gs <= 5 ? 60 : 70),
                                  //             width: gs <= 2
                                  //                 ? 40
                                  //                 : (gs <= 5 ? 60 : 70),
                                  //             decoration: BoxDecoration(
                                  //               borderRadius:
                                  //                   BorderRadius.circular(12),
                                  //               color: appLightColor,
                                  //               boxShadow: [
                                  //                 BoxShadow(
                                  //                   color: appGreyColor,
                                  //                   blurRadius: 6.0,
                                  //                   spreadRadius: 2.0,
                                  //                   offset: Offset(0.0, 0.0),
                                  //                 )
                                  //               ],
                                  //             ),
                                  //             child: Image(
                                  //               image: AssetImage(
                                  //                   "assets/images/img18.png"),
                                  //             ),
                                  //           ),
                                  //           Padding(
                                  //             padding: const EdgeInsets.only(
                                  //                 top: 10.0),
                                  //             child: Align(
                                  //               alignment: Alignment.center,
                                  //               child: Text(
                                  //                 "Toning & Much",
                                  //                 style: TextStyle(
                                  //                     fontSize: gs <= 2
                                  //                         ? 9
                                  //                         : (gs <= 5
                                  //                             ? 12
                                  //                             : 14),
                                  //                     fontWeight:
                                  //                         FontWeight.w600,
                                  //                     color: appThemeColor),
                                  //               ),
                                  //             ),
                                  //           ),
                                  //           Align(
                                  //             alignment: Alignment.center,
                                  //             child: Text(
                                  //               "More...",
                                  //               style: TextStyle(
                                  //                   fontSize: gs <= 2
                                  //                       ? 9
                                  //                       : (gs <= 5 ? 12 : 14),
                                  //                   fontWeight:
                                  //                       FontWeight.w600,
                                  //                   color: appThemeColor),
                                  //             ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //   ],
                                  // ),
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
                  padding: EdgeInsets.fromLTRB(20 * fem, 40 * fem, 20 * fem, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Benefits Of Post-Partum Excercises",
                          style: TextStyle(
                              fontSize: 26 * rem,
                              fontWeight: FontWeight.w600,
                              color: appDarkColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Our Program is planned perfectly to suit you and your busy schedule and also our recorded sessions help you attend the classes anytime.",
                            style: TextStyle(
                                height: 1.5,
                                fontSize: 14 * rem,
                                color: appLightTextColor),
                          ),
                        ),
                      ),
                      SizedBox(height: 40 * fem),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Image.asset(
                            "assets/images/img35.png",
                            colorBlendMode: BlendMode.dstOver,
                            // color: appLightColor.withOpacity(0.9),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: gs < 3
                                  ? appLightColor.withOpacity(0.7)
                                  : null,
                            ),
                            child: BsRow(
                              gutter: const EdgeInsets.symmetric(horizontal: 8),
                              margin: EdgeInsets.only(top: 50 * fem),
                              // gutter: EdgeInsets.symmetric(horizontal: 20),
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                BsCol(
                                  sizes: const ColScreen(
                                    xs: Col.col_5,
                                    sm: Col.col_5,
                                    md: Col.col_5,
                                    lg: Col.col_4,
                                    xl: Col.col_4,
                                    xxl: Col.col_4,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: gs < 3
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        constraints: BoxConstraints(
                                            maxWidth: gs < 3 ? 300 : 500),
                                        child: Table(
                                          columnWidths: const <int,
                                              TableColumnWidth>{
                                            1: FixedColumnWidth(60)
                                          },
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          children: [
                                            TableRow(children: [
                                              getText0(
                                                  "Improved Physical and Mental Health"),
                                              getIcon0(
                                                  "assets/icons/health-care.png"),
                                            ]),
                                            TableRow(children: [
                                              getText0(
                                                  "Improves Your Sleep Patterns"),
                                              getIcon0(
                                                  "assets/icons/sleep.png"),
                                            ]),
                                            TableRow(children: [
                                              getText0(
                                                  "Better Post-Partum Recovery"),
                                              getIcon0(
                                                  "assets/icons/medicine.png"),
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const BsCol(
                                    sizes: ColScreen(
                                  xs: Col.col_2,
                                  sm: Col.col_2,
                                  md: Col.col_2,
                                  lg: Col.col_4,
                                  xl: Col.col_4,
                                  xxl: Col.col_4,
                                )),
                                BsCol(
                                  sizes: const ColScreen(
                                    xs: Col.col_5,
                                    sm: Col.col_5,
                                    md: Col.col_5,
                                    lg: Col.col_4,
                                    xl: Col.col_4,
                                    xxl: Col.col_4,
                                  ),
                                  child: Container(
                                    constraints: BoxConstraints(
                                        maxWidth: gs < 3 ? 300 : 500),
                                    child: Table(
                                      columnWidths: const <int,
                                          TableColumnWidth>{
                                        0: FixedColumnWidth(60)
                                      },
                                      defaultVerticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                      children: [
                                        TableRow(children: [
                                          getIcon1(
                                              "assets/icons/health-care.png"),
                                          getText(
                                              "Helps In Losing Weight Gained in Pregnancy"),
                                        ]),
                                        TableRow(children: [
                                          getIcon1("assets/icons/strength.png"),
                                          getText(
                                              "Stronger Muscles to Build Strength and Endurance"),
                                        ]),
                                        TableRow(children: [
                                          getIcon1(
                                              "assets/icons/renewable-energy.png"),
                                          getText("Increased Energy Levels"),
                                        ]),
                                      ],
                                    ),
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
                Container(
                  color: appLightColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 80, horizontal: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Your First 2 Days Are On Us!",
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 24 * rem,
                              fontWeight: FontWeight.w700,
                              color: appDarkColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "No charge for 14 days, Use a your ease and pay annually or monthly to continue your subscription with us!",
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 14 * rem,
                                  color: appLightTextColor),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60.0),
                          child: Wrap(
                            spacing: 40,
                            runSpacing: 10,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 320 * fem,
                                width: 250 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: appLightColor,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: shadowColor1,
                                      blurRadius: 6.0,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 320 * fem,
                                width: 250 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: appLightColor,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: shadowColor1,
                                      blurRadius: 6.0,
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
                Container(
                  color: appBgColor,
                  child: BsRow(
                    alignment: Alignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      BsCol(
                        sizes: const ColScreen(
                            xs: Col.col_12,
                            sm: Col.col_12,
                            md: Col.col_6,
                            lg: Col.col_4,
                            xl: Col.col_4,
                            xxl: Col.col_4),
                        child: Container(
                          constraints: const BoxConstraints(minHeight: 120),
                          child: getImageFitbox("", BoxFit.fill, null, null),
                        ),
                      ),
                      BsCol(
                        sizes: const ColScreen(
                            xs: Col.col_12,
                            sm: Col.col_12,
                            md: Col.col_6,
                            lg: Col.col_8,
                            xl: Col.col_8,
                            xxl: Col.col_8),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 80, horizontal: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Classes Instructed by Multi-Award Winning Instructor",
                                style: TextStyle(
                                    fontSize: ((16 * rem) < 10 ? 10 : 16 * rem),
                                    fontWeight: FontWeight.w500,
                                    color: appDarkColor),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Text(
                                  "Dr.Aditi Singh",
                                  style: TextStyle(
                                      fontSize:
                                          ((26 * rem) < 16 ? 16 : 26 * rem),
                                      fontWeight: FontWeight.w700,
                                      color: appThemeColor),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Text(
                                  "An online fitness program on postnatal healing, recovery and fitness. The program is designed to provide a complete",
                                  style: TextStyle(
                                      fontSize:
                                          ((14 * rem) < 10 ? 10 : 14 * rem),
                                      fontWeight: FontWeight.w400,
                                      color: appTextColor),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "solution for mom’s return to fitness.The program is structured to incorporate all fundamental principle of exercise.",
                                  style: TextStyle(
                                      fontSize: 14 * rem,
                                      fontWeight: FontWeight.w400,
                                      color: appTextColor),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  "The program is structured to incorporate all fundamental principle of exercise.",
                                  style: TextStyle(
                                      fontSize: 16 * rem,
                                      fontWeight: FontWeight.w400,
                                      color: appTextColor),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: appLightColor,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Hear From Our Experienced Mothers",
                          style: TextStyle(
                              fontSize: ((26 * rem) < 16 ? 16 : 26 * rem),
                              fontWeight: FontWeight.w600,
                              color: appDarkColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Our Program is planned perfectly to suit you and your busy schedule and also our recorded sessions help you attend the classes anytime.",
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 14 * rem,
                                  fontWeight: FontWeight.w300,
                                  color: appLightTextColor),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35.0),
                          child: BsRow(
                            margin: EdgeInsets.symmetric(horizontal: 62 * fem),
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              BsCol(
                                padding:
                                    EdgeInsets.only(left: 33 * fem, top: 20),
                                sizes: const ColScreen(
                                  xs: Col.col_12,
                                  sm: Col.col_7,
                                  md: Col.col_6,
                                  lg: Col.col_8,
                                  xl: Col.col_8,
                                  xxl: Col.col_8,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '"',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: appThemeColor,
                                          fontSize: ((50 * rem) < 40
                                              ? 40
                                              : 50 * rem)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Pre-natal and Post-partum depression are leading risks seen among women during and after pregnancy. These topics have often been overlooked, but we provide the right support, available to you just a click away.",
                                          style: TextStyle(
                                              height: 1.5,
                                              fontSize: ((14 * rem) < 10
                                                  ? 10
                                                  : 14 * rem),
                                              fontWeight: FontWeight.w300,
                                              color: appTextColor),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Anjali Singh",
                                          style: TextStyle(
                                              height: 1.5,
                                              fontSize: 17 * rem,
                                              fontWeight: FontWeight.w500,
                                              color: appThemeColor),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Software Developer",
                                          style: TextStyle(
                                              height: 1.5,
                                              fontSize: 14 * rem,
                                              color: appTextColor),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              BsCol(
                                padding:
                                    EdgeInsets.only(left: 30 * fem, top: 20),
                                sizes: const ColScreen(
                                  xs: Col.col_12,
                                  sm: Col.col_5,
                                  md: Col.col_6,
                                  lg: Col.col_4,
                                  xl: Col.col_4,
                                  xxl: Col.col_4,
                                ),
                                child: Container(
                                  height: gs <= 2 ? 250 : (gs <= 5 ? 300 : 350),
                                  width: gs <= 2 ? 200 : (gs <= 5 ? 300 : 400),
                                  child: getImageFitbox(
                                      "", BoxFit.fill, null, null),
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
                  decoration: const BoxDecoration(
                    // color: appBgColor,
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(246, 246, 246, 1),
                        Color.fromRGBO(246, 246, 246, 0.79),
                        Color.fromRGBO(246, 246, 246, 0),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: BsRow(
                    // gutter: EdgeInsets.symmetric(vertical: 40,horizontal: 50),
                    children: [
                      BsCol(
                        sizes: const ColScreen(
                            xs: Col.col_12,
                            sm: Col.col_12,
                            md: Col.col_5,
                            lg: Col.col_4,
                            xl: Col.col_4,
                            xxl: Col.col_4),
                        child: SizedBox(
                            height: gs <= 2 ? 250 : (gs <= 5 ? 300 : 350),
                            width: 600,
                            child: getImageFitbox("", BoxFit.fill, null, null)
                            // width:
                            //     gs <= 2 ? 200 : (gs <= 5 ? 350 : 450),
                            // decoration: const BoxDecoration(
                            //     // gradient: LinearGradient(colors: [
                            //     //   Color.fromRGBO(246, 246, 246, 1),
                            //     //   Color.fromRGBO(246, 246, 246, 0.79),
                            //     //   Color.fromRGBO(246, 246, 246, 0),
                            //     // ],
                            //     // begin: Alignment.centerLeft,
                            //     // end: Alignment.bottomRight
                            //     // ),
                            //     image: DecorationImage(
                            //   //  colorFilter:  ColorFilter.mode(Color.fromRGBO(246, 246, 246, 1).withOpacity(0.5), BlendMode.dstATop),
                            //   image: AssetImage("assets/images/img37.png"),
                            //   fit: BoxFit.cover,
                            // )),
                            ),
                      ),
                      BsCol(
                        sizes: const ColScreen(
                            xs: Col.col_12,
                            sm: Col.col_12,
                            md: Col.col_7,
                            lg: Col.col_8,
                            xl: Col.col_8,
                            xxl: Col.col_8),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 50, horizontal: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "One Program For Every Mom Out There...!",
                                style: TextStyle(
                                    fontSize: ((26 * rem) < 16 ? 16 : 26 * rem),
                                    fontWeight: FontWeight.w600,
                                    color: appDarkColor),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text(
                                  "Are you a working mom? A mother of more than one? New to a fitness program? We got You....",
                                  style: TextStyle(
                                      height: 1.5,
                                      fontSize: 14 * rem,
                                      fontWeight: FontWeight.w300,
                                      color: appLightTextColor),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: BsRow(
                                  gutter:
                                      EdgeInsets.symmetric(horizontal: 8 * fem),
                                  children: [
                                    BsCol(
                                      padding: const EdgeInsets.only(top: 25),
                                      sizes: const ColScreen(
                                          xs: Col.col_12,
                                          sm: Col.col_12,
                                          md: Col.col_6,
                                          lg: Col.col_6,
                                          xl: Col.col_6,
                                          xxl: Col.col_6),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              getOpIconem(
                                                  "assets/icons/streaming.png"),
                                              getOpTxtem(
                                                  "Recorded Classes available to watch at your convenience"),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                getOpIconem(
                                                    "assets/icons/new.png"),
                                                getOpTxtem(
                                                    "Exercise routines that are easy to follow for beginners"),

                                                // Container(
                                                //   height: gs <= 2
                                                //       ? 30
                                                //       : (gs <= 5 ? 40 : 50),
                                                //   width: gs <= 2
                                                //       ? 30
                                                //       : (gs <= 5 ? 40 : 50),
                                                //   decoration: BoxDecoration(
                                                //     borderRadius:
                                                //         BorderRadius.circular(
                                                //             8),
                                                //     gradient:
                                                //         const LinearGradient(
                                                //             colors: [
                                                //           appThemeColor,
                                                //           appLightThemeColor,
                                                //         ],
                                                //             begin: Alignment
                                                //                 .topCenter,
                                                //             end: Alignment
                                                //                 .bottomRight),
                                                //   ),
                                                //   child: Center(
                                                //     child: Image(
                                                //       height: gs <= 2
                                                //           ? 12
                                                //           : (gs <= 5 ? 15 : 20),
                                                //       width: gs <= 2
                                                //           ? 12
                                                //           : (gs <= 5 ? 15 : 22),
                                                //       image: const AssetImage(
                                                //           "assets/icons/new.png"),
                                                //       fit: BoxFit.cover,
                                                //     ),
                                                //   ),
                                                // ),
                                                // // Expanded(
                                                //   child: Padding(
                                                //     padding:
                                                //         const EdgeInsets.only(
                                                //             left: 14.0),
                                                //     child: Text(
                                                //       "Exercise routines that are easy to follow for beginners",
                                                //       style: TextStyle(
                                                //         height: 1.5,
                                                //         fontWeight:
                                                //             FontWeight.w700,
                                                //         color: appThemeColor,
                                                //         fontSize:
                                                //             ((13 * rem) < 10
                                                //                 ? 10
                                                //                 : 13 * rem),
                                                //       ),
                                                //     ),
                                                //   ),
                                                // ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    BsCol(
                                      padding: const EdgeInsets.only(top: 25),
                                      sizes: const ColScreen(
                                          xs: Col.col_12,
                                          sm: Col.col_12,
                                          md: Col.col_6,
                                          lg: Col.col_6,
                                          xl: Col.col_6,
                                          xxl: Col.col_6),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              getOpIconem(
                                                  "assets/icons/streaming.png"),
                                              getOpTxtem(
                                                  "Live Classes are conducted only on weekends"),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              getOpIconem(
                                                  "assets/icons/yoga-mat.png"),
                                              getOpTxtem(
                                                  "Short on space? The space of a mat is all the area you need!"),
                                            ],
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
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(color: appBgColor),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 80, horizontal: 40),
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "Frequently Asked Questions",
                              style: TextStyle(
                                  fontSize: ((26 * rem) < 16 ? 16 : 26 * rem),
                                  fontWeight: FontWeight.w600,
                                  color: appDarkColor),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 60.0),
                            child: Container(
                              decoration:
                                  const BoxDecoration(color: appLightColor),
                              // height: gs <= 2 ? 100 : (gs <= 5 ? 900 : 800),
                              width: gs <= 2 ? 400 : (gs <= 5 ? 500 : 670),
                              child: DataList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SendEnquery(gsw: gsw),
                RFooter(gsw: gsw),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getIcon(String icon) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          colors: [
            appThemeColor,
            appLightThemeColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Image(
          image: AssetImage(icon),
        ),
      ),
    );
  }

  Widget getText(String txt) {
    return Container(
      margin: EdgeInsets.only(bottom: 40 * fem),
      alignment: AlignmentDirectional.centerStart,
      constraints: const BoxConstraints(minHeight: 45),
      child: Text(
        txt,
        style: stle1,
        textAlign: TextAlign.start,
      ),
    );
  }

  Widget getIcon1(String icon) {
    return Container(
        margin: EdgeInsets.only(bottom: 40 * fem),
        alignment: AlignmentDirectional.centerStart,
        child: getIcon(icon));
  }

  Widget getText0(String txt) {
    return Container(
      margin: EdgeInsets.only(bottom: 40 * fem),
      alignment: AlignmentDirectional.centerEnd,
      constraints: const BoxConstraints(minHeight: 45),
      child: Text(
        txt,
        style: stle1,
        textAlign: TextAlign.end,
      ),
    );
  }

  Widget getIcon0(String icon) {
    return Container(
        margin: EdgeInsets.only(bottom: 40 * fem),
        alignment: AlignmentDirectional.centerEnd,
        child: getIcon(icon));
  }

  Widget getOpIconem(String icon) {
    return Container(
      height: 55 * fem,
      width: 55 * fem,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8 * fem),
        gradient: const LinearGradient(colors: [
          appThemeColor,
          appLightThemeColor,
        ], begin: Alignment.topCenter, end: Alignment.bottomRight),
      ),
      child: Center(
        child: Image(
          height: 22 * fem,
          width: 22 * fem,
          image: AssetImage(icon),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget getOpTxtem(String txt) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 14.0),
        child: Text(
          txt,
          style: TextStyle(
            height: 1.5,
            fontWeight: FontWeight.w700,
            color: appThemeColor,
            fontSize: 13 * rem,
          ),
        ),
      ),
    );
  }
}
