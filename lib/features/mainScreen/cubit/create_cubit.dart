import 'package:bloc/bloc.dart';
import 'package:bloc_practise_app/features/mainScreen/view/count_screen.dart';
import 'package:flutter/cupertino.dart';

class CreateCubit extends Cubit<int> {
  CreateCubit() : super(0);

  void create() {
    emit(state);
    // Navigator.pop(context);
  }
}

TextEditingController stringController = TextEditingController();
TextEditingController numberController = TextEditingController();

void CreateMaker() {
    CreateList name =
        CreateList(name: stringController.text, number: numberController.text);
}

class CreateList {
  final String name;
  final String number;

  CreateList({
    required this.name,
    required this.number,
  });
}

List<CreateList> numbers = [
  CreateList(
    name: 'lol',
    number: '07060395',
  ),
];
