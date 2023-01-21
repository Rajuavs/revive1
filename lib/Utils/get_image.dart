import 'package:flutter/material.dart';

String imageBaseUlr = "https://app.jsportsfootball.com/";
getImage(String img, double w, double h) {
  // print("printImage $img");
  return Image.network(
    img,
    fit: BoxFit.cover,
    width: w,
    height: h,
    // filterQuality: FilterQuality.medium,
    loadingBuilder: (ctx, i, k) {
      // print("printImageError $i");
      if (k == null) {
        return i;
      } else {
        return Container(
          color: Colors.black26,
          alignment: Alignment.center,
          width: 25,
          height: 25,
          child: const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          ),
        );
      }
    },
    errorBuilder: (ctx, i, k) {
      return Image.asset(
        "assets/profileImage.png",
        width: w,
        height: h,
        fit: BoxFit.cover,
      );
    },
  );
}

getImage1(String img, double w, double h) {
  // print("printImage $img");
  return Image.network(
    img,
    fit: BoxFit.fill,
    width: w,
    height: h,
    // filterQuality: FilterQuality.medium,
    loadingBuilder: (ctx, i, k) {
      // print("printImageError $i");
      if (k == null) {
        return i;
      } else {
        return Container(
          color: Colors.black26,
          alignment: Alignment.center,
          width: 25,
          height: 25,
          child: const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          ),
        );
      }
    },
    errorBuilder: (ctx, i, k) {
      return SizedBox(
        width: w,
        height: h,
        child: Icon(
          Icons.error_outline,
          color: Colors.red.shade400,
          size: 40,
        ),
      );
      // return Image.asset(
      //   "assets/profileImage.png",
      //   width: w,
      //   height: h,
      //   fit: BoxFit.contain,
      // );
    },
  );
}

getImagelogow(String img, double w, double h) {
  // print("printImage $img");
  return Image.network(
    img,
    fit: BoxFit.fill,
    width: w,

    // filterQuality: FilterQuality.medium,
    loadingBuilder: (ctx, i, k) {
      // print("printImageError $i");
      if (k == null) {
        return i;
      } else {
        return Container(
          color: Colors.black26,
          alignment: Alignment.center,
          width: 25,
          height: 25,
          child: const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          ),
        );
      }
    },
    errorBuilder: (ctx, i, k) {
      return SizedBox(
        width: w,
        height: h,
        child: Icon(
          Icons.error_outline,
          color: Colors.red.shade400,
          size: 40,
        ),
      );
      // return Image.asset(
      //   "assets/profileImage.png",
      //   width: w,
      //   height: h,
      //   fit: BoxFit.contain,
      // );
    },
  );
}

getImagelogoh(String img, double w, double h) {
  // print("printImage $img");
  return Image.network(
    img,
    fit: BoxFit.fill,

    height: h,

    // filterQuality: FilterQuality.medium,
    loadingBuilder: (ctx, i, k) {
      // print("printImageError $i");
      if (k == null) {
        return i;
      } else {
        return Container(
          color: Colors.black26,
          alignment: Alignment.center,
          width: 25,
          height: 25,
          child: const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          ),
        );
      }
    },
    errorBuilder: (ctx, i, k) {
      return SizedBox(
        width: w,
        height: h,
        child: Icon(
          Icons.error_outline,
          color: Colors.red.shade400,
          size: 40,
        ),
      );
      // return Image.asset(
      //   "assets/profileImage.png",
      //   width: w,
      //   height: h,
      //   fit: BoxFit.contain,
      // );
    },
  );
}

getImageFitbox(String img, BoxFit bf, double? w, double? h) {
  // print("printImage $img");
  Map<String, String> header = <String, String>{
    "Access-Control-Allow-Origin": "*"
  };
  return Image.network(
    img,
    fit: bf,
    width: w,
    height: h,
    headers: header,
    // filterQuality: FilterQuality.medium,
    loadingBuilder: (ctx, i, k) {
      // print("printImageError $i");
      if (k == null) {
        return i;
      } else {
        return Container(
          color: Colors.black26,
          alignment: Alignment.center,
          width: 25,
          height: 25,
          child: const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          ),
        );
      }
    },
    errorBuilder: (ctx, i, k) {
      return const Center(
        child: Icon(
          Icons.error_outline,
          color: Colors.red,
        ),
      );
      // return Image.asset(
      //   "assets/profileImage.png",
      //   width: w,
      //   height: h,
      //   fit: BoxFit.cover,
      // );
    },
  );
}
