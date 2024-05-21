import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  Color progressColor = Colors.greenAccent;
  double progressStrokeWidth = 0.0;
  BoxFit boxFit;
  double containerHeight, containerWidth;
  double iconHeight, iconWidth;
  String imageFile;
  double progressHeight, progressWidth;

  ProgressBar(
      {Key? key,
      required this.containerWidth,
      required this.containerHeight,
      required this.progressColor,
      required this.boxFit,
      required this.iconHeight,
      required this.iconWidth,
      required this.imageFile,
      required this.progressHeight,
      required this.progressWidth,
      required this.progressStrokeWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: containerHeight,
      height: containerWidth,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              // you can replace this with Image.asset
              imageFile,
              fit: boxFit,
              height: iconHeight,
              width: iconWidth,
            ),
          ),
          // you can replace
          SizedBox(
            height: progressHeight,
            width: progressWidth,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(progressColor),
              strokeWidth: progressStrokeWidth,
            ),
          ),
        ],
      ),
    );
  }
}
