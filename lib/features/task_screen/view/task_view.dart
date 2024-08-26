import 'package:bloc_practise_app/features/task_screen/cubit/task_cubit.dart';
import 'package:bloc_practise_app/features/task_screen/view/task_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskCubit(),
      child: const TaskScreen(),
    );
  }
}
