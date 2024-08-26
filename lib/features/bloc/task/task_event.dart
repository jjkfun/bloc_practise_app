part of 'task_bloc.dart';

@immutable
sealed class TaskEvent {}

class AddEvent extends TaskEvent {
  final String newData;

  AddEvent({required this.newData});
}

class UpdateEvent extends TaskEvent {
  final String updatedTask;
  final int index;

  UpdateEvent({
    required this.updatedTask,
    required this.index,
  });
}

class DeleteEvent extends TaskEvent {
  final int index;

  DeleteEvent({required this.index});
}