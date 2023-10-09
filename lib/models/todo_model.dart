import 'package:uuid/uuid.dart';

enum Filter {
  all,
  active,
  completed,
}

Uuid uuid = Uuid();

class Todo {
  late final String id;
  late final String desc;
  late final bool completed;
  Todo({required this.id, required this.desc, required this.completed});

  List<Object?> get props => [id, desc, completed];

  @override
  String toString() {
    return 'Todo{id=$id, desc=$desc, completed=$completed}';
  }

  Todo copyWith({String? id, String? desc, bool? completed}) {
    return Todo(
        id: id ?? this.id,
        desc: desc ?? this.desc,
        completed: completed ?? this.completed);
  }
} //class Todo 
