import 'package:flutter/material.dart';

import '../../Utils/constants.dart';
import '../../Utils/getscreenGrid.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  double fem = 0.0;
  int gs = 1;
  double screenWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    fem = size.width / 1280;
    screenWidth = MediaQuery.of(context).size.width;
    Size _size = MediaQuery.of(context).size;

    gs = getScreenGrid(screenWidth);
    print("gsgs $gs $screenWidth");

    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 50 * fem, horizontal: 100 * fem),
        child: Container(
          //  height: size.height*0.8,
          width: size.width * 0.8,
          decoration: BoxDecoration(
            color: appLightColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: appLightTextColor,
                blurRadius: 6.0,
                spreadRadius: 2.0,
                offset: Offset(0.0, 0.0),
              )
            ],
          ),
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(color: appBgColor),
                width: screenWidth * 0.2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        height: gs <= 2 ? 30 : (gs <= 4 ? 45 : 55),
                        width: 140,
                        image: const AssetImage("assets/images/img1.png"),
                        fit: BoxFit.fill,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Image(
                            height: gs <= 2 ? 200 : (gs <= 4 ? 220 : 250),
                            width: gs <= 2 ? 200 : (gs <= 4 ? 220 : 250),
                            image: const AssetImage("assets/images/img19.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Copyright © 2022 REVIVE",
                          style: TextStyle(
                              fontSize: size.width * 0.01,
                              fontWeight: FontWeight.w400,
                              color: appDarkColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(color: appLightColor),
                  // width: size.width*0.6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "User Registration",
                              style: TextStyle(
                                  fontSize: size.width * 0.02,
                                  fontWeight: FontWeight.w600,
                                  color: appThemeColor),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Add a profile picture",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: appThemeColor),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: appThemeColor, width: 1),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Basic Details",
                                style: TextStyle(
                                    fontSize: size.width * 0.01,
                                    fontWeight: FontWeight.w600,
                                    color: appDarkColor),
                              ),
                              const Icon(
                                Icons.arrow_drop_up,
                                color: appTextColor,
                                size: 25,
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          color: appDarkColor,
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 50,
                              width: size.width * 0.25,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Expanded(
                                        child: TextField(
                                          keyboardType: TextInputType.name,
                                          decoration: InputDecoration(
                                              // border: InputBorder.none,
                                              hintStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor),
                                              hintText: "Add your full name"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: size.width * 0.25,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Expanded(
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              // border: InputBorder.none,
                                              hintStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: appTextColor),
                                              hintText: "Mobile number"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 50,
                                width: size.width * 0.25,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Expanded(
                                          child: TextField(
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            decoration: InputDecoration(
                                                // border: InputBorder.none,
                                                hintStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: appTextColor),
                                                hintText:
                                                    "Email ID (optional)"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 50,
                                width: size.width * 0.25,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Expanded(
                                          child: TextField(
                                            keyboardType:
                                                TextInputType.datetime,
                                            decoration: InputDecoration(
                                                // border: InputBorder.none,
                                                hintStyle: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: appTextColor),
                                                hintText:
                                                    "Date of Birth(optional)"),
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
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Plan Details",
                                style: TextStyle(
                                    fontSize: size.width * 0.01,
                                    fontWeight: FontWeight.w600,
                                    color: appDarkColor),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Change Plan",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                          color: appThemeColor),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_drop_up,
                                    color: appTextColor,
                                    size: 25,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          color: appDarkColor,
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Expanded(
                            child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                color: appLightColor,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(
                                    color: appLightTextColor,
                                    blurRadius: 4.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0.0, 0.0),
                                  )
                                ],
                              ),
                              child: Wrap(
                                children: [
                                  Container(
                                    height: 50,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                        color: appThemeColor,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Beginner",
                                              style: TextStyle(
                                                  fontSize: gs <= 2
                                                      ? 9
                                                      : (gs <= 5 ? 12 : 14),
                                                  fontWeight: FontWeight.w600,
                                                  color: appLightColor),
                                            ),
                                            Text(
                                              "Level",
                                              style: TextStyle(
                                                  fontSize: gs <= 2
                                                      ? 9
                                                      : (gs <= 5 ? 12 : 14),
                                                  fontWeight: FontWeight.w600,
                                                  color: appLightColor),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: appLightColor),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, top: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Wrap(
                                            spacing: 6,
                                            runSpacing: 6,
                                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    height: 4,
                                                    width: 4,
                                                    decoration:
                                                        const BoxDecoration(
                                                            color:
                                                                appThemeColor,
                                                            shape: BoxShape
                                                                .circle),
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4.0),
                                                    child: Text(
                                                      "Total Duration of 6 Weeks",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: appTextColor),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 4,
                                                    width: 4,
                                                    decoration:
                                                        const BoxDecoration(
                                                            color:
                                                                appThemeColor,
                                                            shape: BoxShape
                                                                .circle),
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4.0),
                                                    child: Text(
                                                      "1 Recorded Session every Week",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: appTextColor),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Wrap(
                                            spacing: 6,
                                            runSpacing: 6,

                                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    height: 4,
                                                    width: 4,
                                                    decoration:
                                                        const BoxDecoration(
                                                            color:
                                                                appThemeColor,
                                                            shape: BoxShape
                                                                .circle),
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4.0),
                                                    child: Text(
                                                      "2 Live Sessions per Week",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: appTextColor),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 4,
                                                    width: 4,
                                                    decoration:
                                                        const BoxDecoration(
                                                            color:
                                                                appThemeColor,
                                                            shape: BoxShape
                                                                .circle),
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4.0),
                                                    child: Text(
                                                      "One Free Consultation with us",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: appTextColor),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
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
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Wrap(
                            runAlignment: WrapAlignment.spaceBetween,
                            runSpacing: 10,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 16,
                                    width: 16,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: appTextColor,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Wrap(
                                    spacing: 5,
                                    runSpacing: 8,
                                    children: const [
                                      Text(
                                        "By registering,I agree to the ",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: appTextColor,
                                        ),
                                      ),
                                      Text(
                                        "Terms & Conditions",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: appThemeColor,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: appLightColor,
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          border: Border.all(
                                              color: appThemeColor, width: 1)),
                                      child: const Center(
                                        child: Text(
                                          "Go Back",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                            color: appThemeColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: appThemeColor,
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: appThemeColor, width: 1)),
                                    child: const Center(
                                      child: Text(
                                        "Confirm & Pay",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: appLightColor,
                                        ),
                                      ),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
