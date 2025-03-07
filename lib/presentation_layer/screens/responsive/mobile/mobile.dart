import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instegram/bussinss_logic_layer/cubit/charactercubit.dart';
import 'package:instegram/bussinss_logic_layer/cubit/characterstate.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key});

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
              actions: const [
                Icon(Icons.message),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.logout),
                SizedBox(
                  width: 21,
                )
              ],
              backgroundColor: Colors.white.withOpacity(0.1)),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.shifting,
            currentIndex: CharacterCubit.get(context).current,
            backgroundColor: Colors.black.withOpacity(0.8),
            items: [
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.home,
                      color: CharacterCubit.get(context).current == 0
                          ? Colors.pink
                          : Colors.white),
                  label: "",
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.search,
                      color: CharacterCubit.get(context).current == 1
                          ? Colors.pink
                          : Colors.white),
                  label: "",
                  icon: const Icon(Icons.search, color: Colors.white)),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.upload,
                      color: CharacterCubit.get(context).current == 2
                          ? Colors.pink
                          : Colors.white),
                  label: "",
                  icon: const Icon(Icons.upload, color: Colors.white)),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.favorite,
                  color: CharacterCubit.get(context).current == 3
                      ? Colors.pink
                      : Colors.white,
                ),
                label: "",
                icon: const Icon(Icons.favorite, color: Colors.white),
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.person,
                  color: CharacterCubit.get(context).current == 4
                      ? Colors.pink
                      : Colors.white,
                ),
                label: "",
                icon: const Icon(Icons.person, color: Colors.white),
              ),
            ],
            onTap: (index) {
              CharacterCubit.get(context).updateindex(index, context);
            },
          ),
          body: IndexedStack(
              index: CharacterCubit.get(context).current,
              children: CharacterCubit.get(context).screen));
    });
  }
}
