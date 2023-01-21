import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';
import 'package:revive/Utils/bxdecoration.dart';

import '../../../Utils/bs_sizes.dart';
import '../../../Utils/constants.dart';
import '../../../Utils/get_image.dart';

import 'package:revive/Utils/gradient_button.dart';

class SendEnquery extends StatefulWidget {
  const SendEnquery({super.key, required this.gsw});
  final Map gsw;

  @override
  State<SendEnquery> createState() => _SendEnqueryState();
}

class _SendEnqueryState extends State<SendEnquery> {
  Map gsw = {};
  int gs = 1;
  double screenWidth = 0.0;
  double baseWidth = 0.0;
  double fem = 0.0;
  double rem = 0.0;
  double caboxW = 250.0;
  double tLnHt = 1;
  @override
  Widget build(BuildContext context) {
    gsw = widget.gsw;
    baseWidth = gsw["bw"];
    gs = gsw["gs"];
    screenWidth = gsw["w"];
    screenWidth = screenWidth > baseWidth ? baseWidth : screenWidth;
    fem = gsw["fem"];
    rem = gsw["ffem"];
    tLnHt = gsw["tLnHt"];
    return Container(
      color: appLightColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: BsRow(
          children: [
            BsCol(
              padding: const EdgeInsets.only(
                left: 40,
              ),
              visibility: BsVisibility.hiddenSm,
              sizes: const ColScreen(
                  xs: Col.col_12,
                  sm: Col.col_12,
                  md: Col.col_5,
                  lg: Col.col_5,
                  xl: Col.col_6,
                  xxl: Col.col_6),
              child: Container(
                  height: 380,
                  width: gs <= 2 ? 200 : (gs <= 5 ? 300 : 500),
                  child: getImageFitbox("", BoxFit.fill, null, null)
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(8),
                  //   image: const DecorationImage(
                  //     image: AssetImage("assets/images/img22.png"),
                  //     fit: BoxFit.fill,
                  //   ),
                  // ),
                  ),
            ),
            BsCol(
              padding: const EdgeInsets.only(left: 40, top: 25),
              sizes: const ColScreen(
                  xs: Col.col_12,
                  sm: Col.col_12,
                  md: Col.col_7,
                  lg: Col.col_7,
                  xl: Col.col_6,
                  xxl: Col.col_6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Have more questions? Write to Us!",
                    style: TextStyle(
                        fontSize: ((26 * rem) < 16 ? 16 : 26 * rem),
                        fontWeight: FontWeight.w600,
                        color: appDarkColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Text(
                      "Do you have any questions or inquiries? Get in touch with us..",
                      style: TextStyle(
                          fontSize: ((14 * rem) < 10 ? 10 : 14 * rem),
                          fontWeight: FontWeight.w300,
                          color: appLightTextColor),
                    ),
                  ),
                  BsRow(
                    gutter: EdgeInsets.symmetric(
                        horizontal: 12 * fem, vertical: 8 * fem),
                    children: [
                      BsCol(
                        sizes: col1,
                        decoration: deco1,
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10 * fem, vertical: 10 * fem),
                              hintText: "First Name",
                              border: InputBorder.none),
                        ),
                      ),
                      BsCol(
                        sizes: col1,
                        decoration: deco1,
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10 * fem, vertical: 10 * fem),
                              hintText: "Last Name",
                              border: InputBorder.none),
                        ),
                      ),
                      BsCol(
                        sizes: col1,
                        decoration: deco1,
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10 * fem, vertical: 10 * fem),
                              hintText: "Mobile Number",
                              border: InputBorder.none),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      BsCol(
                        sizes: col1,
                        decoration: deco1,
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10 * fem, vertical: 10 * fem),
                              hintText: "Location/Area",
                              border: InputBorder.none),
                        ),
                      ),
                      BsCol(
                        decoration: deco1,
                        child: TextFormField(
                          maxLines: 5,
                          minLines: 3,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10 * fem, vertical: 10 * fem),
                              hintText: "Message",
                              border: InputBorder.none),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 13 * fem),
                    child: JButtons.gradienButton(
                        context: context,
                        onPressed: (v) {
                          Navigator.pushNamed(context, "postnatalreg");
                        },
                        data: {"label": "Send Enquery", "gsw": gsw, "mw": 130}),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
