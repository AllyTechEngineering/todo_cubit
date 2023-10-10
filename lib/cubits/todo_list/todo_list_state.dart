///States are the output of a Cubit and represent a part of your application's state. UI components can be notified of states and redraw portions of themselves based on the current state.
part of 'todo_list_cubit.dart';

class TodoListState {
  final List<Todo> todos;
  TodoListState({required this.todos});

  factory TodoListState.initial() {
    return TodoListState(todos: [
      Todo(
        id: '1',
        desc: 'Clean the room',
      ),
      Todo(
        id: '2',
        desc: 'Wash the dishes',
      ),
      Todo(
        id: '3',
        desc: 'Do homework',
      ),
    ]);
  }

  List<Object?> get props => [todos];

  @override
  String toString() => 'TodoListState(todos: $todos)';

  TodoListState copyWith({List<Todo>? todos}) {
    return TodoListState(todos: todos ?? this.todos);
  }
}
