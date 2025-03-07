import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instegram/bussinss_logic_layer/cubit/charactercubit.dart';
import 'package:instegram/bussinss_logic_layer/cubit/characterstate.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return BlocBuilder<CharacterCubit, CharacterState>(
        builder: (context, state) {
      return Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(4)),
            margin: EdgeInsets.symmetric(
                horizontal: width > 600 ? 250 : 0, vertical: 40),
            child: Text("search"),
          ));
    });
  }
}
