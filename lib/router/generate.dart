// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:instegram/presentation_layer/screens/responsive/favorite.dart';
import 'package:instegram/presentation_layer/screens/responsive/home.dart';
import 'package:instegram/presentation_layer/screens/responsive/mobile/mobile.dart';
import 'package:instegram/presentation_layer/screens/responsive/responsive.dart';
import 'package:instegram/presentation_layer/screens/responsive/web/web.dart';

import 'package:instegram/utils/constant.dart';

class AppRouter {
  static Route? generatRoute(RouteSettings settings) {
    switch (settings.name) {
      case Constant.responsive:
        return MaterialPageRoute(
          builder: (_) => const Responsive(),
        );
      case Constant.mobile:
        return MaterialPageRoute(
          builder: (_) => const Mobile(),
        );
      case Constant.web:
        return MaterialPageRoute(
          builder: (_) => const Web(),
        );
      case Constant.home:
        return MaterialPageRoute(
          builder: (_) => Home(),
        );
      case Constant.favorite:
        return MaterialPageRoute(
          builder: (_) => const Favorite(),
        );
    }
  }
}
