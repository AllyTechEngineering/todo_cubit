import 'package:bloc/bloc.dart';
import '/models/todo_model.dart';
part 'todo_filter_state.dart';

class TodoFilterCubit extends Cubit<TodoFilterState> {
  TodoFilterCubit() : super(TodoFilterState.initial());

  void changeFilter(Filter newFilter) {
    emit(state.copyWith(filter: newFilter));
  }
} //class TodoFilterCubit
/// copyWith
/// The primary benefit of using copyWith() is that you don't mutate the original object, but instead return a new object with the same properties as the original, but with the values you specify. This allows you to create applications that are easier to test and easier to maintain as objects themselves don't harbor mutable state.