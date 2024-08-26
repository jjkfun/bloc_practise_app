import 'package:bloc/bloc.dart';
import 'package:bloc_practise_app/features/mainScreen/cubit/count_cubit.dart';
import 'package:bloc_practise_app/features/mainScreen/cubit/create_cubit.dart';
import 'package:bloc_practise_app/features/mainScreen/cubit/like_cubit.dart';
import 'package:bloc_practise_app/features/mainScreen/view/second_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountScreen extends StatelessWidget {
  const CountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: BlocBuilder<CountCubit, int>(builder: (context, state) {
              return Text(
                '$state',
                style: const TextStyle(fontSize: 30),
              );
            }),
          ),
          BlocBuilder<LikeCubit, bool>(builder: (context, state) {
            return IconButton(
              onPressed: () => context.read<LikeCubit>().Like(),
              icon: state
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : const Icon(Icons.favorite_border),
            );
          })
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CountCubit>().increment(),
            child: const Icon(
              Icons.add,
              color: Colors.green,
            ),
          ),
          FloatingActionButton(
            onPressed: () => context.read<CountCubit>().minus(),
            child: const Icon(
              Icons.remove,
              color: Colors.red,
            ),
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()),);
                },
                child: Container(
                  width: 50,
                  height:50,
                 child:Text('Create'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Center(
// child: BlocBuilder<CountCubit, int>(builder: (context, state) {
// return Text(
// '$state',
// style: TextStyle(fontSize: 30),
// );
// }),
// ),



// FloatingActionButton(
// onPressed: () => context.read<CreateCubit>().create(),
// child: const Text(
// 'Create',
// style: TextStyle(color: Colors.indigo),
// ),
// ),