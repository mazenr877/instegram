import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instegram/bussinss_logic_layer/cubit/charactercubit.dart';
import 'package:instegram/router/generate.dart';
import 'package:instegram/utils/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharacterCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter.generatRoute,
          initialRoute: Constant.responsive,
          theme: ThemeData.dark()
          // color: Colors.black,
          ),
    );
  }
}
