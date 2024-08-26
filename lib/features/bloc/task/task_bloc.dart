import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'task_event.dart';

part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(const TaskState()) {
    on<AddEvent>((event, emit) {
      emit(TaskState(names: [...state.names, event.newData]));
    });

    on<UpdateEvent>((event, emit) {
      final List<String> updatedList = [...state.names];
      updatedList[event.index] = event.updatedTask;
      emit(TaskState(names: updatedList));
    });

    on<DeleteEvent>((event, emit) {
      final List<String> updatedList = [...state.names];
      updatedList.removeAt(event.index);
      emit(TaskState(names: updatedList));
    });
  }
}