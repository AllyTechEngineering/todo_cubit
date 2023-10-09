// ignore_for_file: public_member_api_docs, sort_constructors_first
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
