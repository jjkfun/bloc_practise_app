import 'package:bloc/bloc.dart';
part 'task_state.dart';



class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(const TaskState());


  void updateTasks(int index, String updatedTasks){
   List<String> updatedList = [...state.names];
   updatedList[index]= updatedTasks;
   emit(TaskState(names: updatedList));
  }

  void deleteTasks(int index){
    List<String> updatedList = [...state.names];
    updatedList.removeAt(index);
    emit(TaskState(names: updatedList));
  }

}
