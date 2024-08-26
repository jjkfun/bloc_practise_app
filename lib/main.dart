import 'package:bloc_practise_app/features/bloc/view/task_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/bloc/task/task_bloc.dart';
import 'features/task_screen/cubit/task_cubit.dart';
// import 'package:second_proj/features/task_screen/view/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TaskCubit()),
        // BlocProvider(create: (context) => CounterBloc()),
        // BlocProvider(create: (context) => LikeBloc()),
        BlocProvider(create: (context) => TaskBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TaskScreen(),
      ),
    );
  }
}



//
// import 'package:bloc_practise_app/auth/bloc/auth_bloc.dart';
// import 'package:bloc_practise_app/auth/repository/auth_repository.dart';
// import 'package:bloc_practise_app/auth/view/logina_screen.dart';
// import 'package:bloc_practise_app/bloc/counter_bloc.dart';
// import 'package:bloc_practise_app/bloc/counter_screen.dart';
// import 'package:bloc_practise_app/feature/car_app/car_view/car_screen.dart';
// import 'package:bloc_practise_app/feature/car_app/cubit/car_cubit.dart';
// import 'package:bloc_practise_app/screen/counter_app/coun_app.dart';
// import 'package:bloc_practise_app/screen/counter_app/count/count_bloc.dart';
// import 'package:bloc_practise_app/screen/counter_app/like/like_bloc.dart';
// import 'package:bloc_practise_app/screen/cubit/list_cubit.dart';
// import 'package:bloc_practise_app/screen/view/list_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (context) => CounterBloc()),
//         BlocProvider(create: (context) => LikeBloc()),
//         BlocProvider(create: (context) => AuthBloc(AuthRepository()))
//       ],
//       child: MaterialApp(
//           title: 'Flutter Demo',
//           theme: ThemeData(
//             colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//             useMaterial3: true,
//           ),
//           home: Scaffold(
//             body:  LoginForm(authBloc: AuthBloc(AuthRepository())),
//           )
//       ),
//     );
//   }
// }