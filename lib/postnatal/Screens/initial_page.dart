import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:revive/Utils/get_gridsize.dart';

import '../../Utils/constants.dart';
import 'home_page.dart';
// import 'package:revive_postnatal/Screens/home_page.dart';
// import 'package:revive_postnatal/Utils/constants.dart';

// import '../Utils/getScreenGrid.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  TextEditingController passController = TextEditingController();
  TextEditingController cpassController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController topController = TextEditingController();

  double fem = 0.0;
  int gs = 1;
  double screenWidth = 0.0;
  Map gsw = {};
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    fem = size.width / 1280;
    screenWidth = MediaQuery.of(context).size.width;

    gsw = getGridSize(context);
    print("gsgs $gs $screenWidth");
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 50 * fem, horizontal: 100 * fem),
        child: Container(
          width: size.width * 0.8,
          decoration: BoxDecoration(
            color: appDarkColor.withOpacity(0.7),
          ),
          child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: 70 * fem, horizontal: 50 * fem),
            child: Container(
              width: size.width * 0.5,
              decoration: const BoxDecoration(
                color: appLightColor,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                        height: gs <= 2 ? 30 : (gs <= 4 ? 45 : 55),
                        width: gs <= 2 ? 80 : (gs <= 5 ? 100 : 140),
                        image: const AssetImage("assets/images/img1.png")),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        "Welcome to Post-Natal Fitness Program!",
                        style: TextStyle(
                            fontSize: gs <= 2 ? 14 : (gs <= 5 ? 16 : 18),
                            fontWeight: FontWeight.w500,
                            color: appDarkColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "You’re almost ready to get started! We just need a few more details to create the right experience for you",
                        style: TextStyle(
                            height: 1.5,
                            fontSize: gs <= 2 ? 10 : (gs <= 5 ? 12 : 14),
                            fontWeight: FontWeight.w300,
                            color: appTextColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 31.0),
                      child: BsRow(
                        children: [
                          BsCol(
                            padding: const EdgeInsets.only(top: 10, left: 8),
                            sizes: const ColScreen(
                              xs: Col.col_12,
                              sm: Col.col_12,
                              md: Col.col_6,
                              lg: Col.col_6,
                              xl: Col.col_6,
                              xxl: Col.col_6,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Expanded(
                                      flex: 2,
                                      child: Text(
                                        "Set Password  :",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: appDarkColor),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: SizedBox(
                                        width: gs <= 2
                                            ? size.width * 0.4
                                            : size.width * 0.25,
                                        child: TextFormField(
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: appLightThemeColor),
                                          // maxLines: 2,
                                          // minLines: 1,
                                          controller: passController,
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          decoration: InputDecoration(
                                            hintText: "Min 4 Char",
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              borderSide: const BorderSide(
                                                  color: appLightTextColor,
                                                  width: 1),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              borderSide: const BorderSide(
                                                  color: appLightTextColor,
                                                  width: 1),
                                            ),
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "Please Enter Password";
                                            } else if (!RegExp(
                                                    r'/(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\S+$).{8,}$/')
                                                .hasMatch(value)) {
                                              return "Enter Correct Password";
                                            } else {
                                              return null;
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    children: [
                                      const Expanded(
                                        flex: 2,
                                        child: Text(
                                          "Child’s DOB  :",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: appDarkColor),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 6,
                                        child: SizedBox(
                                          width: gs <= 2
                                              ? size.width * 0.4
                                              : size.width * 0.25,
                                          child: TextFormField(
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: appLightThemeColor),
                                            // maxLines: 2,
                                            // minLines: 1,
                                            controller: dobController,
                                            keyboardType:
                                                TextInputType.datetime,
                                            decoration: InputDecoration(
                                              hintText: "DD/MM/YYYY",
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                borderSide: const BorderSide(
                                                    color: appLightTextColor,
                                                    width: 1),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                borderSide: const BorderSide(
                                                    color: appLightTextColor,
                                                    width: 1),
                                              ),
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "Please Enter DOB";
                                              } else if (!RegExp(
                                                      r'/(?:0[1-9]|[12]\d|3[01])([\/.-])(?:0[1-9]|1[012])\1(?:19|20)\d\d$/')
                                                  .hasMatch(value)) {
                                                return "Enter Correct DOB";
                                              } else {
                                                return null;
                                              }
                                            },
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
                            padding: const EdgeInsets.only(top: 10, left: 8),
                            sizes: const ColScreen(
                              xs: Col.col_12,
                              sm: Col.col_12,
                              md: Col.col_6,
                              lg: Col.col_6,
                              xl: Col.col_6,
                              xxl: Col.col_6,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Expanded(
                                      flex: 2,
                                      child: Text(
                                        "Confirm Password  :",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: appDarkColor),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: SizedBox(
                                        width: gs <= 2
                                            ? size.width * 0.4
                                            : size.width * 0.25,
                                        child: TextFormField(
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: appLightThemeColor),
                                          // maxLines: 2,
                                          // minLines: 1,
                                          controller: cpassController,
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          decoration: InputDecoration(
                                            hintText:
                                                "Repeat previous password",
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              borderSide: const BorderSide(
                                                  color: appLightTextColor,
                                                  width: 1),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              borderSide: const BorderSide(
                                                  color: appLightTextColor,
                                                  width: 1),
                                            ),
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "Please Enter Password";
                                            } else if (passController.text !=
                                                cpassController.text) {
                                              return "Enter Correct Password";
                                            } else {
                                              return null;
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    children: [
                                      const Expanded(
                                        flex: 2,
                                        child: Text(
                                          "Type of Pregnancy :",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: appDarkColor),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 6,
                                        child: SizedBox(
                                          width: gs <= 2
                                              ? size.width * 0.4
                                              : size.width * 0.25,
                                          child: TextFormField(
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: appLightThemeColor),
                                            // maxLines: 2,
                                            // minLines: 1,
                                            controller: topController,
                                            keyboardType: TextInputType.text,
                                            decoration: InputDecoration(
                                              hintText:
                                                  "Your age determines the",
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                borderSide: const BorderSide(
                                                    color: appLightTextColor,
                                                    width: 1),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                borderSide: const BorderSide(
                                                    color: appLightTextColor,
                                                    width: 1),
                                              ),
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "Please Enter Type of Pregnancy";
                                              } else {
                                                return null;
                                              }
                                            },
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
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
                          },
                          child: Container(
                            height: gs <= 2 ? 30 : 38,
                            width: gs <= 2 ? 70 : 130,
                            decoration: BoxDecoration(
                              color: appThemeColor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                "Save Details",
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
      ),
    );
  }
}
