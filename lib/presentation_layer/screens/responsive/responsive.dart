// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instegram/presentation_layer/screens/responsive/mobile/mobile.dart';
import 'package:instegram/presentation_layer/screens/responsive/web/web.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth > 600) {
        return const Web();
      } else {
        return const Mobile();
      }
    });
  }
}
