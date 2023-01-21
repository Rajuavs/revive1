import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class RFooter extends StatelessWidget {
  RFooter({super.key, required this.gsw});
  final Map gsw;
  int gs = 1;
  double screenWidth = 0.0;
  double baseWidth = 0.0;
  double fem = 0.0;
  double rem = 0.0;
  double caboxW = 250.0;
  double tLnHt = 1;

  @override
  Widget build(BuildContext context) {
    baseWidth = gsw["bw"];
    gs = gsw["gs"];
    screenWidth = gsw["w"];
    screenWidth = screenWidth > baseWidth ? baseWidth : screenWidth;
    fem = gsw["fem"];
    rem = gsw["ffem"];
    tLnHt = gsw["tLnHt"];
    caboxW = 255.0 * fem;
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: appBgColor,
          ),
          child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: 50 * fem, horizontal: 80 * fem),
            child: BsRow(
              children: [
                BsCol(
                  padding: const EdgeInsets.only(top: 30, left: 40),
                  transformAlignment: Alignment.center,
                  sizes: const ColScreen(
                      xs: Col.col_12,
                      sm: Col.col_6,
                      md: Col.col_6,
                      lg: Col.col_3,
                      xl: Col.col_3,
                      xxl: Col.col_3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        width: 130 * fem,
                        image: const AssetImage("assets/icons/logo.png"),
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Revive is an health service provider in the field of physiotherapy, pilates, mothers health and more!",
                            style: TextStyle(
                                height: 1.5,
                                fontSize: ((12 * rem) < 10 ? 10 : 12 * rem),
                                fontWeight: FontWeight.w300,
                                color: appLightTextColor),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14.0),
                        child: Wrap(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: appLightColor,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: appThemeColor,
                                    width: 1,
                                  )),
                              child: const Center(
                                child: Image(
                                  image:
                                      AssetImage("assets/icons/instagramp.png"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: appLightColor,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: appThemeColor,
                                      width: 1,
                                    )),
                                child: const Center(
                                  child: Image(
                                    image: AssetImage(
                                        "assets/icons/facebookp.png"),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: appLightColor,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: appThemeColor,
                                      width: 1,
                                    )),
                                child: const Center(
                                  child: Image(
                                    image: AssetImage(
                                        "assets/icons/instagramp.png"),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: appLightColor,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: appThemeColor,
                                      width: 1,
                                    )),
                                child: const Center(
                                  child: Image(
                                    image:
                                        AssetImage("assets/icons/twitterp.png"),
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
                BsCol(
                  padding: const EdgeInsets.only(top: 30, left: 40),
                  sizes: const ColScreen(
                      xs: Col.col_12,
                      sm: Col.col_6,
                      md: Col.col_6,
                      lg: Col.col_3,
                      xl: Col.col_3,
                      xxl: Col.col_3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Page Navigation",
                        style: TextStyle(
                            fontSize: ((17 * rem) < 14 ? 14 : 17 * rem),
                            fontWeight: FontWeight.w700,
                            color: appThemeColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "About Us",
                          style: TextStyle(
                              fontSize: ((12 * rem) < 10 ? 10 : 12 * rem),
                              fontWeight: FontWeight.w400,
                              color: appTextColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "Program Overview",
                          style: TextStyle(
                              fontSize: ((12 * rem) < 10 ? 10 : 12 * rem),
                              fontWeight: FontWeight.w400,
                              color: appTextColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "Benefits",
                          style: TextStyle(
                              fontSize: ((12 * rem) < 10 ? 10 : 12 * rem),
                              fontWeight: FontWeight.w400,
                              color: appTextColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "FAQ’s",
                          style: TextStyle(
                              fontSize: ((12 * rem) < 10 ? 10 : 12 * rem),
                              fontWeight: FontWeight.w400,
                              color: appTextColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "Enquiry",
                          style: TextStyle(
                              fontSize: ((12 * rem) < 10 ? 10 : 12 * rem),
                              fontWeight: FontWeight.w400,
                              color: appTextColor),
                        ),
                      ),
                    ],
                  ),
                ),
                BsCol(
                  padding: const EdgeInsets.only(top: 30, left: 40),
                  sizes: const ColScreen(
                      xs: Col.col_12,
                      sm: Col.col_6,
                      md: Col.col_6,
                      lg: Col.col_3,
                      xl: Col.col_3,
                      xxl: Col.col_3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Revive Physical Health",
                        style: TextStyle(
                            fontSize: ((17 * rem) < 14 ? 14 : 17 * rem),
                            fontWeight: FontWeight.w700,
                            color: appThemeColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "Pre-Natal Fitness",
                          style: TextStyle(
                              fontSize: ((12 * rem) < 10 ? 10 : 12 * rem),
                              fontWeight: FontWeight.w400,
                              color: appTextColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "Pilates Programs",
                          style: TextStyle(
                              fontSize: ((12 * rem) < 10 ? 10 : 12 * rem),
                              fontWeight: FontWeight.w400,
                              color: appTextColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "Education",
                          style: TextStyle(
                              fontSize: ((12 * rem) < 10 ? 10 : 12 * rem),
                              fontWeight: FontWeight.w400,
                              color: appTextColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "The FitMom Club",
                          style: TextStyle(
                              fontSize: ((12 * rem) < 10 ? 10 : 12 * rem),
                              fontWeight: FontWeight.w400,
                              color: appTextColor),
                        ),
                      ),
                    ],
                  ),
                ),
                BsCol(
                  padding: const EdgeInsets.only(top: 30, left: 40),
                  sizes: const ColScreen(
                      xs: Col.col_12,
                      sm: Col.col_6,
                      md: Col.col_6,
                      lg: Col.col_3,
                      xl: Col.col_3,
                      xxl: Col.col_3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get in Touch with Us",
                        style: TextStyle(
                            fontSize: ((17 * rem) < 14 ? 14 : 17 * rem),
                            fontWeight: FontWeight.w700,
                            color: appThemeColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "info@revivephysiotherapy.in",
                          style: TextStyle(
                              fontSize: ((12 * rem) < 10 ? 10 : 12 * rem),
                              fontWeight: FontWeight.w400,
                              color: appTextColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                          "+91 98861 46240",
                          style: TextStyle(
                              fontSize: ((12 * rem) < 10 ? 10 : 12 * rem),
                              fontWeight: FontWeight.w400,
                              color: appTextColor),
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
          width: double.infinity,
          decoration: const BoxDecoration(color: appThemeColor),
          child: Padding(
            padding: EdgeInsets.fromLTRB(60 * fem, 15, 60 * fem, 15),
            child: Wrap(
              runSpacing: 12,
              alignment: WrapAlignment.spaceBetween,
              children: [
                Text(
                  "Copyright @Revivephysicalhealth. All Rights Reserved",
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 12 * rem,
                      fontWeight: FontWeight.w500,
                      color: appLightColor),
                ),
                Wrap(
                  // mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      "Terms & Conditions",
                      style: TextStyle(
                          height: 1.5,
                          fontSize: 12 * rem,
                          // fontWeight: FontWeight.w300,
                          color: appLightColor),
                    ),
                    // SizedBox(
                    //   height: 45,

                    //   child: VerticalDivider(
                    //     width: 2,
                    //     color: appLightColor,
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(
                            height: 1.5,
                            fontSize: 12 * rem,
                            // fontWeight: FontWeight.w300,
                            color: appLightColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
