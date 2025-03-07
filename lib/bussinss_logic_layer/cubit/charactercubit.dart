import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instegram/bussinss_logic_layer/cubit/characterstate.dart';
import 'package:instegram/presentation_layer/screens/responsive/favorite.dart';
import 'package:instegram/presentation_layer/screens/responsive/home.dart';
import 'package:instegram/presentation_layer/screens/responsive/persone.dart';
import 'package:instegram/presentation_layer/screens/responsive/search.dart';
import 'package:instegram/presentation_layer/screens/responsive/upload.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit() : super(CharacterInitial());
  static CharacterCubit get(context) => BlocProvider.of(context);
  final screen = [
    Home(),
    const Search(),
    const Upload(),
    const Favorite(),
    const Persone()
  ];

  final appbar = ["instegram", "Search", "Upload", "Favorite", "Persone"];
  int current = 0;
  void updateindex(index, context) {
    CharacterCubit.get(context).current = index;
    emit(CharacterLodded());
  }
}
