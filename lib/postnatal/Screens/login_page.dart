import 'package:flutter/material.dart';
import 'package:revive/Utils/get_gridsize.dart';

import '../../Utils/constants.dart';
import 'initial_page.dart';

// import 'package:revive_postnatal/Screens/initial_page.dart';
// import 'package:revive_postnatal/Screens/register_page.dart';

// import '../Utils/constants.dart';
// import '../Utils/getScreenGrid.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(color: appLightColor),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Image(
                              height: gs <= 2 ? 30 : (gs <= 4 ? 40 : 45),
                              width: gs <= 2 ? 60 : (gs <= 5 ? 90 : 130),
                              image:
                                  const AssetImage("assets/images/img1.png")),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Welcome Back!",
                          style: TextStyle(
                              fontSize: gs <= 2 ? 22 : (gs <= 5 ? 20 : 22),
                              fontWeight: FontWeight.w600,
                              color: appDarkColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text(
                            "Please login to your account",
                            style: TextStyle(
                                fontSize: gs <= 2 ? 16 : (gs <= 5 ? 12 : 16),
                                fontWeight: FontWeight.w600,
                                color: appTextColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Text(
                            "Username or Email Address",
                            style: TextStyle(
                                fontSize: gs <= 2 ? 14 : (gs <= 5 ? 12 : 14),
                                fontWeight: FontWeight.w600,
                                color: appDarkColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: appBgColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: TextFormField(
                                  style: TextStyle(
                                      fontSize:
                                          gs <= 2 ? 14 : (gs <= 5 ? 12 : 14),
                                      fontWeight: FontWeight.w400,
                                      color: appDarkColor),
                                  decoration: InputDecoration(
                                      hintText: "someone@gmail.com",
                                      hintStyle: TextStyle(
                                          fontSize: gs <= 2
                                              ? 12
                                              : (gs <= 5 ? 10 : 12),
                                          fontWeight: FontWeight.w400,
                                          color: appTextColor),
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Text(
                            "Password",
                            style: TextStyle(
                                fontSize: gs <= 2 ? 14 : (gs <= 5 ? 12 : 14),
                                fontWeight: FontWeight.w600,
                                color: appDarkColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: appBgColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                      hintText: ".........",
                                      border: InputBorder.none),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 16,
                                    width: 16,
                                    // height: _size.height * 0.01,
                                    // width: _size.width * 0.01,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: appTextColor, width: 1),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "Keep me logged in",
                                    style: TextStyle(
                                        fontSize:
                                            gs <= 2 ? 12 : (gs <= 5 ? 10 : 12),
                                        fontWeight: FontWeight.w400,
                                        color: appTextColor),
                                  ),
                                ],
                              ),
                              Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    fontSize:
                                        gs <= 2 ? 12 : (gs <= 5 ? 10 : 12),
                                    fontWeight: FontWeight.w400,
                                    color: appThemeColor),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const InitialPage(),
                                ),
                              );
                            },
                            child: Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: appThemeColor),
                              child: const Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: appLightColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Center(
                                child: Text(
                                  "Don't have an account? ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: appTextColor),
                                ),
                              ),
                              Center(
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, "postnatalreg");
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) =>
                                    //         RegistrationPageP(),
                                    //   ),
                                    // );
                                  },
                                  child: const Text(
                                    "Sign Up Here",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: appThemeColor,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: gs <= 2 ? screenWidth * 0.0 : screenWidth * 0.4,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/img25.png"),
                      fit: BoxFit.fill),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
