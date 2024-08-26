import 'package:bloc_practise_app/features/mainScreen/cubit/count_cubit.dart';
import 'package:bloc_practise_app/features/mainScreen/cubit/like_cubit.dart';
import 'package:bloc_practise_app/features/mainScreen/view/count_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountPage extends StatelessWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => CountCubit()),
      BlocProvider(create: (context) => LikeCubit())
    ], child: const CountScreen());
  }
}
