import 'package:bloc_practise_app/features/task_screen/cubit/task_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskCubit(),
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: BlocBuilder<TaskCubit, TaskState>(builder: (context, state) {
          return state.names.isNotEmpty
              ? ListView.builder(
              itemCount: state.names.length,
              itemBuilder: (context, index) {
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    color: Colors.white,
                    child: Center(
                      child: ListTile(
                        leading: Text('${index + 1}'),
                        title: Text(state.names[index],
                          style: TextStyle(color: Colors.black),),

                      ),
                    ),
                  ),
                );
              })
              : Center(
            child: Text('No Data'),
          );
        }),
      ),
    );
  }
}
