import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instegram/bussinss_logic_layer/cubit/charactercubit.dart';
import 'package:instegram/bussinss_logic_layer/cubit/characterstate.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return BlocBuilder<CharacterCubit, CharacterState>(
        builder: (context, state) {
      return Scaffold(
          backgroundColor:
              width > 600 ? Colors.white.withOpacity(0.4) : Colors.black,
          body: Container(
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(4)),
            margin: EdgeInsets.symmetric(
                horizontal: width > 600 ? 250 : 0, vertical: 40),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 27, top: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://th.bing.com/th/id/R.f73da8b51aeb86da8d9abda7cbe162bf?rik=oPmOB229MRPUFw&pid=ImgRaw&r=0"),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("fgf")
                          ],
                        ),
                        Icon(Icons.arrow_drop_down)
                      ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.network(
                  fit: BoxFit.cover,
                  "https://th.bing.com/th/id/OIP.zISFV7nEchYSJ9NWerYKxgHaEo?rs=1&pid=ImgDetMain",
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: double.infinity,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.favorite_border_outlined),
                          SizedBox(width: 16),
                          Icon(Icons.comment),
                          SizedBox(width: 16),
                          Icon(Icons.send)
                        ],
                      ),
                      Icon(Icons.bookmark_border_outlined),
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 18, top: 19),
                    width: double.infinity,
                    child: Text("10 likes",
                        style:
                            TextStyle(color: Colors.white.withOpacity(0.5)))),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15, left: 19),
                  child: const Row(
                    children: [
                      Text("mazen reda"),
                      SizedBox(
                        width: 13,
                      ),
                      Text("alla akper "),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      margin: const EdgeInsets.only(left: 19, top: 13),
                      width: double.infinity,
                      child: Text("view all 100 comments",
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.5)))),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 18, top: 19),
                    width: double.infinity,
                    child: Text("17 Des 2024",
                        style:
                            TextStyle(color: Colors.white.withOpacity(0.5)))),
              ],
            ),
          ));
    });
  }
}
