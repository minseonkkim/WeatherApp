import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Model {
  Widget getWeatherIcon(int condition, int hour, String ap) {
    if (condition >= 200 && condition < 300) {
      return SvgPicture.asset(
        'svg/climacon-colud_lightning.svg',
        color: Colors.black87,
      );
    } else if (condition >= 300 && condition < 400) {
      return SvgPicture.asset(
        'svg/climacon-cloud_drizzle.svg',
        color: Colors.black87,
      );
    } else if (condition >= 500 && condition < 600) {
      return SvgPicture.asset(
        'svg/climacon-cloud_rain.svg',
        color: Colors.black87,
      );
    } else if (condition >= 600 && condition < 700) {
      return SvgPicture.asset(
        'svg/climacon-cloud_snow_alt.svg',
        color: Colors.black87,
      );
    } else if (condition >= 700 && condition < 800) {
      return SvgPicture.asset(
        'svg/climacon-cloud_fog.svg',
        color: Colors.black87,
      );
    } else if (condition == 800 &&
        ((hour >= 6 && ap == 'AM') ||
            (hour < 6 && ap == 'PM') ||
            (hour == 12 && ap == 'PM'))) {
      return SvgPicture.asset(
        'svg/climacon-sun.svg',
        color: Colors.black87,
      );
    } else if (condition == 800 &&
        ((hour < 6 && ap == 'AM') ||
            (hour >= 6 && hour <= 11 && ap == 'PM') ||
            (hour == 12 && ap == 'AM'))) {
      return SvgPicture.asset(
        'svg/climacon-moon.svg',
        color: Colors.black87,
      );
    } else if ((hour >= 6 && hour <= 11 && ap == 'AM') ||
        (hour < 6 && ap == 'PM') ||
        (hour == 12 && ap == 'AM')) {
      return SvgPicture.asset(
        'svg/climacon-cloud_sun.svg',
        color: Colors.black87,
      );
    } else {
      return SvgPicture.asset(
        'svg/climacon-cloud_moon.svg',
        color: Colors.black87,
      );
    }
  }

  Widget getAirIcon(int index) {
    if (index == 1) {
      return Image.asset(
        'image/good.png',
        width: 37.0,
        height: 35.0,
      );
    } else if (index == 2) {
      return Image.asset(
        'image/fair.png',
        width: 37.0,
        height: 35.0,
      );
    } else if (index == 3) {
      return Image.asset(
        'image/moderate.png',
        width: 37.0,
        height: 35.0,
      );
    } else if (index == 4) {
      return Image.asset(
        'image/poor.png',
        width: 37.0,
        height: 35.0,
      );
    } else {
      return Image.asset(
        'image/bad.png',
        width: 37.0,
        height: 35.0,
      );
    }
  }

  Widget getAirCondition(int index) {
    if (index == 1) {
      return Text(
        '"매우좋음"',
        style: TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
      );
    } else if (index == 2) {
      return Text(
        '"좋음"',
        style: TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
      );
    } else if (index == 3) {
      return Text(
        '"보통"',
        style: TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
      );
    } else if (index == 4) {
      return Text(
        '"나쁨"',
        style: TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
      );
    } else {
      return Text(
        '"매우나쁨"',
        style: TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
      );
    }
  }
}
