import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';

import '../../Utils/constants.dart';
import '../../Utils/get_gridsize.dart';
import 'login_page.dart';

class RegistrationPageP extends StatefulWidget {
  const RegistrationPageP({super.key});

  @override
  State<RegistrationPageP> createState() => _RegistrationPagePState();
}

class _RegistrationPagePState extends State<RegistrationPageP> {
  double fem = 0.0;
  double rem = 0.0;
  Map gsw = {};
  int gs = 1;
  double screenWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    fem = size.width / 1280;
    rem = screenWidth / 1280 * 0.97;
    screenWidth = MediaQuery.of(context).size.width;

    gsw = getGridSize(context);
    print("gsgs $gs $screenWidth");
    TextEditingController nameController = TextEditingController();
    TextEditingController mobileController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    // TextEditingController dobController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 50 * fem, horizontal: 100 * fem),
        child: Container(
          //  height: size.height*0.8,
          width: size.width * 0.8,
          decoration: BoxDecoration(
            color: appLightColor,
            borderRadius: BorderRadius.circular(12),
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
                decoration: BoxDecoration(
                  color: appBgColor,
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.8), BlendMode.dstATop),
                      image: const AssetImage("assets/images/img23.png"),
                      fit: BoxFit.fill),
                ),
                width: gs <= 2 ? screenWidth * 0.0 : screenWidth * 0.25,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        height: gs <= 2 ? 30 : (gs <= 4 ? 45 : 55),
                        width: 140,
                        image: const AssetImage("assets/images/img24.png"),
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 500, bottom: 10),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Copyright © 2022 REVIVE",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: ((12 * rem) < 10 ? 10 : 12 * rem),
                                fontWeight: FontWeight.w400,
                                color: appLightColor),
                          ),
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
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 32.0, horizontal: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "User Registration",
                                style: TextStyle(
                                    fontSize: ((22 * rem) < 16 ? 16 : 22 * rem),
                                    fontWeight: FontWeight.w600,
                                    color: appThemeColor),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Add a profile picture",
                                      style: TextStyle(
                                          fontSize:
                                              ((14 * rem) < 12 ? 12 : 14 * rem),
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
                            padding: const EdgeInsets.only(top: 25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Basic Details",
                                  style: TextStyle(
                                      fontSize:
                                          ((16 * rem) < 12 ? 12 : 16 * rem),
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
                          BsRow(
                            children: [
                              BsCol(
                                // padding: EdgeInsets.only(left: 8),
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
                                    Container(
                                      constraints: const BoxConstraints(
                                          maxWidth: 300, minWidth: 250),
                                      child: TextFormField(
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: appDarkColor),
                                        // maxLines: 2,
                                        // minLines: 1,
                                        controller: nameController,
                                        keyboardType: TextInputType.name,
                                        decoration: const InputDecoration(
                                          hintText: "Add your full name",
                                          hintStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: appTextColor),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Please Enter  Name";
                                          } else if (RegExp(
                                                  r'/(^[a-zA-Z][a-zA-Z\s]{0,20}[a-zA-Z]$)/')
                                              .hasMatch(value)) {
                                            return "Enter Correct Name";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        constraints: const BoxConstraints(
                                            maxWidth: 300, minWidth: 250),
                                        child: TextFormField(
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: appDarkColor),
                                          // maxLines: 2,
                                          // minLines: 1,
                                          controller: emailController,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          decoration: const InputDecoration(
                                            hintText: "Email ID",
                                            hintStyle: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: appTextColor),
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "Please Enter Email";
                                            } else if (!RegExp(
                                                    r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$')
                                                .hasMatch(value)) {
                                              return "Enter Correct Email Address";
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
                              BsCol(
                                // padding: EdgeInsets.only(left: 8),
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
                                    Container(
                                      constraints: const BoxConstraints(
                                          maxWidth: 300, minWidth: 250),
                                      child: TextFormField(
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: appDarkColor),
                                        // maxLines: 2,
                                        // minLines: 1,
                                        controller: mobileController,
                                        keyboardType: TextInputType.name,
                                        decoration: const InputDecoration(
                                          hintText: "Mobile Number",
                                          hintStyle: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: appTextColor),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Please Enter Mobile Number";
                                          } else if (!RegExp(
                                                  r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s./0-9]*$')
                                              .hasMatch(value)) {
                                            return "Enter Correct Phone Number";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Container(
                                        constraints: const BoxConstraints(
                                          maxWidth: 300,
                                          minWidth: 250,
                                        ),
                                        child: TextFormField(
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: appDarkColor),
                                          // maxLines: 2,
                                          // minLines: 1,
                                          controller: emailController,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          decoration: const InputDecoration(
                                            hintText: "Date of Birth(optional)",
                                            hintStyle: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: appTextColor),
                                          ),
                                          // validator: (value) {
                                          //           if (value!.isEmpty) {
                                          //             return "Please Enter DOB";
                                          //           } else if (!RegExp(
                                          //                   r'/(?:0[1-9]|[12]\d|3[01])([\/.-])(?:0[1-9]|1[012])\1(?:19|20)\d\d$/')
                                          //               .hasMatch(value)) {
                                          //             return "Enter Correct DOB";
                                          //           } else {
                                          //             return null;
                                          //           }
                                          //         },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Plan Details",
                                  style: TextStyle(
                                      fontSize:
                                          gs <= 2 ? 12 : (gs <= 5 ? 14 : 16),
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
                            padding: const EdgeInsets.only(top: 24.0),
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
                                child: Row(
                                  children: [
                                    Container(
                                      height: 150,
                                      width:
                                          gs <= 2 ? 100 : (gs <= 5 ? 150 : 200),
                                      decoration: const BoxDecoration(
                                          color: appThemeColor,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            bottomLeft: Radius.circular(8),
                                          )),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Post Natal Care",
                                            style: TextStyle(
                                              fontSize: gs <= 2
                                                  ? 12
                                                  : (gs <= 5 ? 14 : 16),
                                              fontWeight: FontWeight.w600,
                                              color: appLightColor,
                                            ),
                                          ),
                                          Text(
                                            "6 Months",
                                            style: TextStyle(
                                              fontSize: gs <= 2
                                                  ? 12
                                                  : (gs <= 5 ? 14 : 16),
                                              fontWeight: FontWeight.w600,
                                              color: appLightColor,
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
                          Padding(
                            padding: const EdgeInsets.only(top: 35.0),
                            child: Wrap(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              runSpacing: 10,
                              //  runAlignment: WrapAlignment.spaceBetween,
                              alignment: WrapAlignment.spaceBetween,

                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
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
                                      children: const [
                                        Text(
                                          "By registering,I agree to the ",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: appTextColor,
                                          ),
                                          softWrap: true,
                                        ),
                                        Text(
                                          "Terms & Conditions",
                                          softWrap: true,
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
                                const SizedBox(
                                  width: 150,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height:
                                            gs <= 2 ? 20 : (gs <= 5 ? 30 : 35),
                                        width: 90,
                                        decoration: BoxDecoration(
                                            color: appLightColor,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            border: Border.all(
                                                color: appThemeColor,
                                                width: 1)),
                                        child: Center(
                                          child: Text(
                                            "Go Back",
                                            style: TextStyle(
                                              fontSize: gs <= 2 ? 10 : 13,
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
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LoginPage(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        height:
                                            gs <= 2 ? 20 : (gs <= 5 ? 30 : 35),
                                        width: 90,
                                        decoration: BoxDecoration(
                                            color: appThemeColor,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            border: Border.all(
                                                color: appThemeColor,
                                                width: 1)),
                                        child: Center(
                                          child: Text(
                                            "Confirm & Pay",
                                            style: TextStyle(
                                              fontSize: gs <= 2 ? 10 : 13,
                                              fontWeight: FontWeight.w600,
                                              color: appLightColor,
                                            ),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
