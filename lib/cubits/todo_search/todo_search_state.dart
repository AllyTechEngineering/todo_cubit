///States are the output of a Cubit and represent a part of your application's state. UI components can be notified of states and redraw portions of themselves based on the current state.
part of 'todo_search_cubit.dart';

class TodoSearchState {
  final String searchTerm;
  TodoSearchState({required this.searchTerm});

  factory TodoSearchState.initial() {
    return TodoSearchState(searchTerm: '');
  }

  List<Object?> get props => [searchTerm];

  @override
  String toString() => 'TodoSearchState(searchTerm: $searchTerm)';
  TodoSearchState copyWith({String? searchTerm}) {
    return TodoSearchState(searchTerm: searchTerm ?? this.searchTerm);
  }
} //class TodoSearchState
