import 'package:flutter/material.dart';
import 'package:revive/Utils/constants.dart';

import 'get_gridsize.dart';

class JButtons {
  static materialClrButton({
    required BuildContext context,
    required Function onPressed,
    required Map data,
  }) {
    String label = data['label'];
    // var mh = double.parse(data['mh'].toString());
    // var mw = double.parse(data['mw'].toString());
    var fontS = double.parse((data['fontSize'] ?? 14.0).toString());
    bool enable = data['enable'] ?? true;

    var gsw = getGridSize(context);
    double baseWidth = gsw["bw"];
    int gs = gsw["gs"];
    double screenWidth = gsw["w"];
    double fem = screenWidth / baseWidth;

    double ffem = gsw["ffem"];
    var mhf = double.parse(data['mh'].toString());
    var mwf = double.tryParse(data['mw'].toString());

    var fontSize = fontS * ffem;

    var mh = mhf * (gs < 3 ? fem / ffem : fem);
    double minh = 30.0;
    double minw = 80.0;
    if (mh < minh) {
      mh = minh;
    } else if (mh > mhf) {
      mh = mhf;
    }

    var mw = (data['mw'] == "di")
        ? double.infinity
        : mwf! * (gs < 3 ? (fem / ffem) : fem);
    try {
      if (data['mw'] != "di") {
        if (mw < minw) {
          mw = minw;
        } else if (mw > (mwf!)) {
          mw = mwf * 1.2;
          fontSize = fontS * 1.2;
        }
      }
    } catch (_) {}
    // print("$mw, $mh");

    return SizedBox(
      width: mw,
      child: MaterialButton(
        height: mh,
        elevation: 5,
        color: appThemeColor,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        onPressed: enable
            ? () {
                onPressed(label);
              }
            : null,
        child: Ink(
          width: mw,
          child: Container(
            constraints: BoxConstraints(
              maxHeight: mh,
              maxWidth: mw,
              minHeight: minh,
              minWidth: minw,
            ),
            alignment: Alignment.center,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: fontS,
                letterSpacing: 0.75,
              ),
            ),
          ),
        ),
      ),
    );
  }

  static outlinedButton({
    required BuildContext context,
    required Function onPressed,
    required Map data,
  }) {
    String label = data['label'];
    // var mh = double.parse(data['mh'].toString());
    // var mw = double.parse(data['mw'].toString());
    // print("dataaaaa $data");
    var gsw = getGridSize(context);
    double baseWidth = gsw["bw"];
    int gs = gsw["gs"];
    double screenWidth = gsw["w"];
    double fem = gsw["fem"];
    double ffem = gsw["ffem"];
    var mhf = double.parse(data["mh"].toString());
    var mwf = double.tryParse(data['mw'].toString());

    var fontS = double.parse((data['fontSize'] ?? 14).toString());
    double fontSize = fontS * ffem;
    var mh = mhf * (gs < 3 ? (fem / ffem) : fem);
    // var mh = mhf * (gs < 3 ? ffem / fem : fem);
    double minh = 30.0;
    double minw = 80.0;

    if (mh < minh) {
      mh = minh;
    } else if (mh > mhf) {
      mh = mhf;
    }

    var mw = (data['mw'] == "di")
        ? double.infinity
        : mwf! * (gs < 3 ? fem / ffem : fem);
    try {
      if ((data['mw'] != "di")) {
        if (mw < minw) {
          mw = minw;
        } else if (mw > (mwf!)) {
          mw = mwf * 1.2;
          fontSize = fontS * 1.2;
        }
      }
    } catch (_) {}
    // print("wh: $mw, $mh - $minh, $minw");

    return Container(
      constraints: BoxConstraints(
        maxHeight: mh,
        maxWidth: mw,
        minHeight: minh,
        minWidth: minw,
      ),
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () {
            onPressed(label);
          },
          style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              textStyle: const TextStyle(fontWeight: FontWeight.w600),
              side: const BorderSide(color: appLightThemeColor),
              alignment: Alignment.center,
              minimumSize: Size(minw, minh),
              maximumSize: Size(mw, mh)),
          child: Text(
            label,
            style: TextStyle(fontSize: fontS),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  static outlinedButtonWicon({
    required BuildContext context,
    required Function onPressed,
    required Map data,
  }) {
    String label = data['label'];
    var mh = double.parse(data['mh'].toString());
    var mw = double.parse("${data['mw']}");
    double fontS = data['fontSize'] ?? 14.0;
    var lIcon = data["licon"] ?? Container();
    var rIcon = data["ricon"] ?? Container();
    return Container(
      constraints: BoxConstraints(
        maxHeight: mh,
        maxWidth: mw,
        minHeight: 28.0,
        minWidth: 110.0,
      ),
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () {
            onPressed(label);
          },
          style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              textStyle: const TextStyle(
                  fontWeight: FontWeight.w600, letterSpacing: 0.4),
              side: const BorderSide(color: appLightThemeColor),
              alignment: Alignment.center,
              minimumSize: const Size(120.0, 28.0),
              maximumSize: Size(mw, mh)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              lIcon,
              Text(
                label,
                style: TextStyle(fontSize: fontS),
                textAlign: TextAlign.center,
              ),
              rIcon
            ],
          ),
        ),
      ),
    );
  }

  static backButton({
    required BuildContext context,
    required Function onPressed,
    required Map data,
  }) {
    String label = data['tooltip'] ?? "";
    var mh = double.parse(data['mh'].toString());
    var mw = double.parse(data['mw'].toString());
    Widget child = data['child'] ?? const Icon(Icons.arrow_back, size: 20);
    return Tooltip(
      message: label,
      child: MaterialButton(
          minWidth: 30.0,
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          onPressed: () {
            onPressed(label);
          },
          child: Container(
              constraints: BoxConstraints(
                maxHeight: mh,
                maxWidth: mw,
                minHeight: 30.0,
                minWidth: 30.0,
              ),
              child: child)),
    );
  }

  static gradienButton({
    required BuildContext context,
    required Function onPressed,
    required Map data,
  }) {
    // print(data);
    String label = data['label'];
    // var mh = double.parse(data['mh'].toString());
    // var mw = double.parse(data['mw'].toString());
    var fontS = data['fontSize'] ?? 12;
    // var fontSize = double.parse(fontS.toString());
    // print("fontSized $fontSize");
    var gsw = data["gsw"] ?? getGridSize(context);
    double baseWidth = gsw["bw"];
    int gs = gsw["gs"];
    double screenWidth = gsw["w"];
    double fem = screenWidth / baseWidth;

    double ffem = gsw["ffem"];
    var mhf = double.parse("${data['mh'] ?? 38}");
    var mwf = double.tryParse("${data['mw'] ?? 120}");
    double minh = double.parse((data["minh"] ?? 30).toString());
    double minw = double.parse((data["minw"] ?? 80).toString());

    var fontSize = fontS * ffem;

    var mh = mhf * (gs < 3 ? fem / ffem : fem);

    if (mh < minh) {
      mh = minh;
    } else if (mh > mhf) {
      mh = mhf;
    }

    var mw = (data['mw'] == "di")
        ? double.infinity
        : mwf! * (gs < 3 ? (fem / ffem) : fem);
    try {
      if (data['mw'] != "di") {
        if (mw < minw) {
          mw = minw * 1.2;
        } else if (mw > (mwf!)) {
          mw = mwf * 1.2;
          fontSize = fontS * 1.2;
        }
      }
    } catch (_) {}

    return SizedBox(
      // width: mw,
      child: MaterialButton(
        elevation: 5,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        onPressed: () {
          onPressed(label);
        },
        child: Ink(
          decoration: inkDecoration,
          width: mw,
          child: Container(
            constraints: BoxConstraints(
              maxHeight: mh,
              maxWidth: mw,
              minHeight: minh,
              minWidth: minw,
            ),
            alignment: Alignment.center,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                fontSize: fontSize,
                letterSpacing: 0.4,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
