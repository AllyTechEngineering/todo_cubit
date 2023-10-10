///States are the output of a Cubit and represent a part of your application's state. UI components can be notified of states and redraw portions of themselves based on the current state.
part of 'todo_filter_cubit.dart';

class TodoFilterState {
  final Filter filter;
  TodoFilterState({required this.filter});

  factory TodoFilterState.initial() {
    return TodoFilterState(filter: Filter.all);
  }

  List<Object?> get props => [filter];

  @override
  String toString() => 'TodoFilterState(filter: $filter)';

  TodoFilterState copyWith({Filter? filter}) {
    return TodoFilterState(filter: filter ?? this.filter);
  }
} //class TodoFilterState
