import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instegram/bussinss_logic_layer/cubit/charactercubit.dart';
import 'package:instegram/bussinss_logic_layer/cubit/characterstate.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
        builder: (context, state) {
      return const Scaffold(
          backgroundColor: Colors.black, body: Text("Favorite"));
    });
  }
}
