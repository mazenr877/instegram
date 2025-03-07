import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instegram/bussinss_logic_layer/cubit/charactercubit.dart';
import 'package:instegram/bussinss_logic_layer/cubit/characterstate.dart';
import 'package:instegram/presentation_layer/screens/responsive/favorite.dart';
import 'package:instegram/presentation_layer/screens/responsive/home.dart';
import 'package:instegram/presentation_layer/screens/responsive/persone.dart';
import 'package:instegram/presentation_layer/screens/responsive/search.dart';
import 'package:instegram/presentation_layer/screens/responsive/upload.dart';

class Web extends StatelessWidget {
  const Web({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
        builder: (context, state) {
      return Scaffold(
          appBar: AppBar(
              elevation: 0,
              title: Text(
                CharacterCubit.get(context)
                    .appbar[CharacterCubit.get(context).current],
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));

                      CharacterCubit.get(context).updateindex(0, context);
                    },
                    icon: Icon(
                      Icons.home,
                      color: CharacterCubit.get(context).current == 0
                          ? Colors.red
                          : Colors.white,
                    )),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Search()));
                      CharacterCubit.get(context).updateindex(1, context);
                    },
                    icon: Icon(
                      Icons.search,
                      color: CharacterCubit.get(context).current == 1
                          ? Colors.red
                          : Colors.white,
                    )),
                SizedBox(
                  width: 21,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Upload()));
                      CharacterCubit.get(context).updateindex(2, context);
                    },
                    icon: Icon(
                      Icons.upload,
                      color: CharacterCubit.get(context).current == 2
                          ? Colors.red
                          : Colors.white,
                    )),
                SizedBox(
                  width: 21,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Favorite()));
                      CharacterCubit.get(context).updateindex(3, context);
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: CharacterCubit.get(context).current == 3
                          ? Colors.red
                          : Colors.white,
                    )),
                SizedBox(
                  width: 21,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Persone()));
                      CharacterCubit.get(context).updateindex(4, context);
                    },
                    icon: Icon(
                      Icons.person,
                      color: CharacterCubit.get(context).current == 4
                          ? Colors.red
                          : Colors.white,
                    )),
                SizedBox(
                  width: 21,
                ),
              ],
              backgroundColor: Colors.white.withOpacity(0.4)),
          body: IndexedStack(
              index: CharacterCubit.get(context).current,
              children: CharacterCubit.get(context).screen));
    });
  }
}
